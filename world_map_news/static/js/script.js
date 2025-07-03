// Initialisation carte Leaflet
const map = L.map('map', {
  worldCopyJump: false,  // Ne saute pas automatiquement d’un monde à l’autre
  maxBounds: [[-85, -180], [85, 180]],  // Limite la carte aux bornes du globe
  maxBoundsViscosity: 1.0, // Empêche le glissement au-delà des limites
  minZoom: 2, // Empêche le zoom arrière abusif
  maxZoom: 8  // Pour éviter un zoom trop profond
}).setView([20, 0], 2);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  attribution: '&copy; OpenStreetMap contributors'
}).addTo(map);

function formatDate(dateStr) {
  const d = new Date(dateStr);
  return d.toLocaleString();
}
// Charge les news depuis le backend json généré par le script Python
async function loadNews() {
  try {
    const res = await fetch('/api/news');
    if (!res.ok) throw new Error('Erreur réseau');

    const newsData = await res.json();
    // Pour chaque pays on place un marker avec popup des news
    for (const countryCode in newsData) {
      const newsList = newsData[countryCode];
      if (!newsList.length) continue;

      const coordsByCountry = {
        "France": [46.6, 2.4],
        "Russia": [61.5, 105.3],
        "China": [35.9, 104.2],
        "Ukraine": [48.4, 31.2],
        "United States": [38.9, -100.0],
        "Germany": [51.2, 10.4],
        "United Kingdom": [55.4, -3.4],
        "Japan": [36.2, 138.2],
        "India": [20.6, 78.9],
        "Brazil": [-14.2, -51.9],
        "Australia": [-25.3, 133.8],
        "Netherlands": [52.3, 5.7],
        "South Korea": [36.5, 127.8],
        "Turkey": [39.0, 35.0],
        "Iran": [32.0, 53.0], 
        "Palestine": [31.9, 35.2],
        "Israel": [31.5, 34.8],
        "Arabia Saoudite": [24.0, 45.0],
        "Groenland": [72.0, -40.0],
        "Australia": [-25.3, 133.8],
      };
      const coords = coordsByCountry[countryCode];
      if (!coords) continue; // skip si pas dans la liste

      // Création contenu popup avec titres + liens
      let popupContent = '';
      newsList.forEach(news => {
        popupContent += `
          <div class="news-item">
            <div class="news-title">${news.title}</div>
            <div class="news-date">${formatDate(news.date)}</div>
            <a class="news-link" href="${news.link}" target="_blank" rel="noopener noreferrer">Lire l'article</a>
            <hr/>
          </div>
        `;
      });

      L.marker(coords)
        .addTo(map)
        .bindPopup(popupContent);
    }
  } catch (err) {
    console.error('Erreur chargement news:', err);
  }
}
loadNews();