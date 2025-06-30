const alphabet = [
  { cyrillic: "А", latin: "a" },
  { cyrillic: "Б", latin: "b" },
  { cyrillic: "В", latin: "v" },
  { cyrillic: "Г", latin: "g" },
  { cyrillic: "Д", latin: "d" },
  { cyrillic: "Е", latin: "ie" },
  { cyrillic: "Ё", latin: "io" },
  { cyrillic: "Ж", latin: "j" },
  { cyrillic: "З", latin: "z" },
  { cyrillic: "И", latin: "i" },
  { cyrillic: "Й", latin: "ï" },
  { cyrillic: "К", latin: "k" },
  { cyrillic: "Л", latin: "l" },
  { cyrillic: "М", latin: "m" },
  { cyrillic: "Н", latin: "n" },
  { cyrillic: "О", latin: "o" },
  { cyrillic: "П", latin: "p" },
  { cyrillic: "Р", latin: "r" },
  { cyrillic: "С", latin: "s" },
  { cyrillic: "Т", latin: "t" },
  { cyrillic: "У", latin: "ou" },
  { cyrillic: "Ф", latin: "f" },
  { cyrillic: "Х", latin: "kh" },
  { cyrillic: "Ц", latin: "ts" },
  { cyrillic: "Ч", latin: "tch" },
  { cyrillic: "Ш", latin: "ch" },
  { cyrillic: "Щ", latin: "chtch" },
  { cyrillic: "Ы", latin: "y" },
  { cyrillic: "Э", latin: "è" },
  { cyrillic: "Ю", latin: "iou" },
  { cyrillic: "Я", latin: "ia" },
];

const grid = document.getElementById("alphabet");

alphabet.forEach((letter) => {
  const el = document.createElement("div");
  el.className = "letter";
  el.innerHTML = `${letter.cyrillic}<span class="latin">${letter.latin}</span>`;
  el.onclick = () => {
    const utterance = new SpeechSynthesisUtterance(letter.cyrillic);
    utterance.lang = "ru-RU";
    speechSynthesis.speak(utterance);
  };
  grid.appendChild(el);
});
