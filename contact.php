<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupération des données du formulaire
    $nom = htmlspecialchars($_POST['nom']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    // Validation simple
    if (!empty($nom) && !empty($email) && !empty($message) && filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Paramètres de l'email
        $to = "aloisneroncarrignon@yahoo.fr"; // Ton adresse email de destination
        $subject = "Message de " . $nom; // Sujet de l'email
        $message_content = "Nom: $nom\nEmail: $email\nMessage: $message"; // Contenu du message

        // En-têtes de l'email
        $headers = "From: $email\r\n";
        $headers .= "Reply-To: $email\r\n";
        $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

        // Envoi de l'email
        if (mail($to, $subject, $message_content, $headers)) {
            echo "Votre message a été envoyé avec succès.";
        } else {
            echo "Désolé, il y a eu un problème lors de l'envoi de votre message.";
        }
    } else {
        echo "Veuillez remplir tous les champs correctement.";
    }
}
?>