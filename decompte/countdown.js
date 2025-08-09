// Config : modifie ici la date cible et le nom de l'objectif
const goalName = "Ma victoire";
// Date cible au format ISO 8601 (année-mois-jourThh:mm:ss)
const targetDateStr = "2035-03-13T00:00:00z";

const goalNameEl = document.getElementById('goalName');
const countdownEl = document.getElementById('countdown');

goalNameEl.textContent = goalName;

function updateCountdown() {
  const now = new Date();
  const targetDate = new Date(targetDateStr);
  let diff = targetDate - now;

  if (diff <= 0) {
    countdownEl.textContent = "Je t'avais dit que je gagnerais !";
    clearInterval(intervalId);
    return;
  }

  const yearMs = 1000 * 60 * 60 * 24 * 365;
  const dayMs = 1000 * 60 * 60 * 24;

  const years = Math.floor(diff / yearMs);
  diff -= years * yearMs;

  const days = Math.floor(diff / dayMs);
  diff -= days * dayMs;

  const hours = Math.floor((diff / (1000 * 60 * 60)) % 24);
  const minutes = Math.floor((diff / (1000 * 60)) % 60);
  const seconds = Math.floor((diff / 1000) % 60);

  // Affichage formaté
  countdownEl.innerHTML =
  `<span class="number">${years}</span><span class="unit">A</span> ` +
  `<span class="number">${days}</span><span class="unit">J</span> ` +
  `<span class="number">${hours}</span><span class="unit">h</span> ` +
  `<span class="number">${minutes}</span><span class="unit">m</span> ` +
  `<span class="number">${seconds}</span><span class="unit">s</span>`;
}

updateCountdown();
const intervalId = setInterval(updateCountdown, 1000);