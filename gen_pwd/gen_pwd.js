function generatePassword() {
    const length = parseInt(document.getElementById('length').value);
    
    // Vérifier la longueur minimale
    if (length < 12 ) {
        alert("La longueur du mot de passe doit être d'au moins 12 caractères.");
        return;
    } else if (length > 30) {
        alert("La longueur du mot de passe doit être inférieur à 30 caractères.");
        return;
    } else if (isNaN(length)){
        alert("La valeur saisie doit être un nombre");
        return;
    }

    // Définition des caractères possibles
    const lettersUpper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const lettersLower = 'abcdefghijklmnopqrstuvwxyz';
    const digits = '0123456789';
    const specialChars = '!\"#$%&\'()*+,-./:;<=>?@[\\]^_{|}~';

    // Calcul des minimums en fonction de la longueur
    const minSpecialChars = Math.max(2, Math.floor(length / 6));
    const minDigits = Math.max(2, Math.floor(length / 6));
    const minUpper = Math.max(3, Math.floor(length / 4));
    const minLower = Math.max(3, Math.floor(length / 4));

    let password = '';

    // Ajouter les caractères minimaux
    password += generateRandomString(specialChars, minSpecialChars);
    password += generateRandomString(digits, minDigits);
    password += generateRandomString(lettersUpper, minUpper);
    password += generateRandomString(lettersLower, minLower);

    // Compléter avec des caractères aléatoires si nécessaire
    const remainingLength = length - password.length;
    if (remainingLength > 0) {
        const allChars = lettersUpper + lettersLower + digits + specialChars;
        password += generateRandomString(allChars, remainingLength);
    }

    // Mélanger le mot de passe
    password = shuffleString(password);

    // Afficher le mot de passe
    document.getElementById('password').textContent = password;
}

// Fonction pour générer une chaîne de caractères aléatoires
function generateRandomString(chars, length) {
    let result = '';
    for (let i = 0; i < length; i++) {
        result += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return result;
}

// Fonction pour mélanger une chaîne de caractères
function shuffleString(str) {
    const array = str.split('');
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array.join('');
}

// Fonction pour copier le mot de passe dans le presse-papiers
function copyPassword() {
    const passwordField = document.getElementById('password');
    // Utilisation de la sélection de texte sans interaction
    const range = document.createRange();
    range.selectNode(passwordField);
    window.getSelection().removeAllRanges();
    window.getSelection().addRange(range);

    // Copier dans le presse-papiers
    navigator.clipboard.writeText(passwordField.textContent)
        .then(() => {
            alert('Mot de passe copié dans le presse-papiers !');
        })
        .catch(err => {
            alert('Erreur lors de la copie dans le presse-papiers: ' + err);
        });
}