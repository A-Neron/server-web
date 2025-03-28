function pickAgents() {
    let nb_agents = document.getElementById("nb_agents").value;
    let verif = Number(nb_agents);

    if (verif < 1 || verif > 5 || isNaN(verif)) {
        alert("Veuillez entrer un nombre entre 1 et 5.");
        return;
    }

    let formData = new FormData();
    formData.append("nb_agents", nb_agents);
    
    fetch(API_URL, {
        method: "POST",
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        let resultHTML = '';
        data.forEach(agent => {
            resultHTML += `
                <div class="agent">
                    ${agent.nom_agent}
                    <picture>
                        <source media="(max-width: 768px)" srcset="${agent.image_agent.replace('.webp', '_icon.webp')}">
                        <img src="${agent.image_agent}" alt="${agent.nom_agent}"/>
                    </picture>
                </div>
            `;
        });
        document.getElementById("resultat").innerHTML = resultHTML;
    })
    .catch(error => console.error("Erreur:", error));
}