// Initialisation carte Leaflet
const map = L.map('map', {
  worldCopyJump: false,  // Ne saute pas automatiquement d’un monde à l’autre
  maxBounds: [[-85, -180], [85, 180]],  // Limite la carte aux bornes du globe
  maxBoundsViscosity: 1.0, // Empêche le glissement au-delà des limites
  minZoom: 2, // Empêche le zoom arrière abusif
  maxZoom: 15  // Pour éviter un zoom trop profond
}).setView([20, 0], 2);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

// Fonction pour formater la date
function formatDate(dateStr) {
  const d = new Date(dateStr);
  return d.toLocaleString();
}
// Coordonnées aproximatives des pays pour les markers
const coordsByCountry = {
  "France": [46.6, 2.4],
  "Russia": [61.5, 90],
  "China": [35.9, 104.2],
  "Ukraine": [48.4, 31.2],
  "United States": [38.9, -100.0],
  "Germany": [51.2, 10.4],
  "United Kingdom": [55.4, -3.4],
  "Japan": [36.2, 138.2],
  "India": [20.6, 78.9],
  "Brazil": [-14.2, -51.9],
  "Australia": [-25.3, 133.8],
  "South Korea": [36.5, 127.8],
  "Iran": [32.0, 53.0], 
  "Palestine": [31.9, 35.2],
  "Australia": [-25.3, 133.8],
  "Egypt": [26.8, 30.8],
  "South Africa": [-30.6, 22.9],
};

// Charge les news depuis le backend json généré par le script Python
async function loadNews() {
  try {
    const res = await fetch('/api/news');
    if (!res.ok) throw new Error('Erreur réseau');

    const newsData = await res.json();

    const markersCluster = L.markerClusterGroup(); // Création du cluster

    // Pour chaque pays on place un marker avec popup des news
    for (const countryCode in newsData) {
      console.log(`Traitement pays: "${countryCode}"`);
      const newsList = newsData[countryCode];
      if (!newsList.length) continue;

      const coords = coordsByCountry[countryCode];
      if (!coords) continue; // skip si pas dans la liste

      // Générer l'HTML swiper pour ce pays
      let popupContent = `
        <div class="swiper mySwiper${countryCode.replace(/\s/g,'')}">
        <div class="swiper-wrapper">`;

      newsList.forEach(news => {
        popupContent += `
          <div class="swiper-slide">
            <div class="news-item">
              <div class="news-title">${news.title}</div>
              <div class="news-date">${formatDate(news.date)}</div>
              <a class="news-link" href="${news.link}" target="_blank" rel="noopener noreferrer">Lire l'article</a>
            </div>
          </div>
        `;
      });

      popupContent += `
          </div>
          <div class="swiper-pagination"></div>
        </div>
      `;

      const marker = L.marker(coords);
      marker.bindPopup(popupContent);

      // Pour initialiser swiper quand popup est ouvert
      marker.on('popupopen', () => {
        new Swiper(`.mySwiper${countryCode.replace(/\s/g,'')}`, {
          slidesPerView: 1,
          spaceBetween: 10,
          pagination: {
            el: `.mySwiper${countryCode.replace(/\s/g,'')} .swiper-pagination`,
            clickable: true,
          },
        });
      });

      markersCluster.addLayer(marker); // ajoute le marker au cluster
    }
    map.addLayer(markersCluster); // ajoute tout le cluster à la carte
  } catch (err) {
    console.error('Erreur chargement news:', err);
  }
}

loadNews();