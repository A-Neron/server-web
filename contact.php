<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = $_POST['nom'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    // Destinataire et sujet
    $to = "aloisneroncarrignon@yahoo.fr";
    $subject = "Formulaire site perso";

    // Corps de l'e-mail
    $messageBody = "Nom: $nom\nEmail: $email\nMessage: $message";

    // Envoi de l'e-mail
    if (mail($to, $subject, $messageBody)) {
        echo "Message envoyé avec succès !";
    } else {
        echo "Erreur lors de l'envoi du message.";
    }
}
?>