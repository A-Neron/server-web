let leftSelected = null;
let pairsGlobal = []; // stockage global des paires
let currentPairs = []; // paires affichées actuellement

fetch('words.json')
  .then(response => response.json())
  .then(pairs => {
    pairsGlobal = pairs; // on garde la liste complète
    initGame();
  });

function initGame() {
  const maxWords = 6;

  // Tirage aléatoire de 6 paires différentes
  currentPairs = getRandomPairs(maxWords);

  // Construction des mots avec leur id = index dans currentPairs
  // Pour la colonne gauche, on choisit au hasard russe ou français
  const leftWordsWithId = currentPairs.map((p, index) => {
    return Math.random() > 0.5
      ? { text: p.ru, id: index }
      : { text: p.fr, id: index };
  });

  // Pour la colonne droite, on met la traduction opposée
  const rightWordsWithId = currentPairs.map((p, index) => {
    const leftWord = leftWordsWithId[index].text;
    return (leftWord === p.ru)
      ? { text: p.fr, id: index }
      : { text: p.ru, id: index };
  }).sort(() => 0.5 - Math.random()); // on mélange droite

  // Récupération des conteneurs
  const leftCol = document.getElementById('left-column');
  const rightCol = document.getElementById('right-column');

  leftCol.innerHTML = '';
  rightCol.innerHTML = '';

  // Ajout des mots à gauche
  leftWordsWithId.forEach(({ text, id }) => {
    const div = createWordElement(text, 'left', id);
    leftCol.appendChild(div);
  });

  // Ajout des mots à droite
  rightWordsWithId.forEach(({ text, id }) => {
    const div = createWordElement(text, 'right', id);
    rightCol.appendChild(div);
  });

  leftSelected = null; // reset sélection
}

function createWordElement(text, side, pairId) {
  const div = document.createElement('div');
  div.textContent = text;
  div.classList.add('word');
  div.dataset.side = side;
  div.dataset.id = pairId;
  div.addEventListener('click', () => handleClick(div));
  return div;
}

function handleClick(el) {
  if (el.dataset.side === 'left') {
    // On sélectionne un mot à gauche
    if (leftSelected) leftSelected.classList.remove('selected');
    leftSelected = el;
    el.classList.add('selected');
  } else {
    // Si on clique à droite sans sélection gauche => rien
    if (!leftSelected) return;

    // Vérification de la correspondance par ID
    if (el.dataset.id === leftSelected.dataset.id) {
      // Bonne correspondance
      leftSelected.classList.add('correct');
      el.classList.add('correct');

      // Désactivation des clics
      leftSelected.removeEventListener('click', handleClick);
      el.removeEventListener('click', handleClick);
    } else {
      // Mauvaise correspondance : effet rouge temporaire
      leftSelected.classList.add('incorrect');
      el.classList.add('incorrect');
      setTimeout(() => {
        leftSelected.classList.remove('incorrect');
        el.classList.remove('incorrect');
      }, 800);
    }

    // On reset la sélection à gauche
    leftSelected.classList.remove('selected');
    leftSelected = null;
  }
}

// Fonction pour tirer aléatoirement n paires sans répétition
function getRandomPairs(n) {
  if (n >= pairsGlobal.length) return [...pairsGlobal];

  // On mélange
  const shuffled = [...pairsGlobal].sort(() => 0.5 - Math.random());
  return shuffled.slice(0, n);
}