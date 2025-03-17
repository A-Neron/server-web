function pickAgents() {
    let nb_agents = document.getElementById("nb_agents").value;
    let formData = new FormData();
    formData.append("nb_agents", nb_agents);
    
    fetch("/random_pick/pick", {
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
                        <source media="(max-width: 768px)" srcset="/static/images/images_agents/${agent.icon_agent}" alt="${agent.nom_agent}">
                        <img src="/static/images/images_agents/${agent.image_agent}" alt="${agent.nom_agent}">
                    </picture>
                </div>
            `;
        });
        document.getElementById("resultat").innerHTML = resultHTML;
    })
    .catch(error => console.error("Erreur:", error));
}