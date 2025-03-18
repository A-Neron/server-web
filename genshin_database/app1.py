from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__) # Créer l'application Flask

# Fonction pour obtenir une connexion à la base de données
def get_db_connection():
    return mysql.connector.connect(host="localhost",user="root",password="toto",database="genshin_db")

@app.route("/")
def home():
    # Liaison avec le formulaire pour récupéré la donnée afin de modifier ou non la requête.
    nom_personnage = request.args.get("nom_personnage_recherche", "")
    tri = request.args.get("tri", "")  # Par défaut, tri pas
    
    db = get_db_connection() # Connexion à la bdd 
    cursor = db.cursor(dictionary=True)  # Prépare le curseur dans la bdd

    # Requête SQL initial
    query = """
        SELECT  
            p.image_personnage, 
            p.nom_personnage, 
            p.rarete_personnage,
            p.type_arme_personnage,
            p.image_type_arme, 
            p.type_personnage,
            p.image_type,
            pierres.image_pierre,
            boss.image_objet_boss,
            boss.nom_objet_boss,
            boss.nom_boss,
            bh.image_objet_boss_hebdo,
            bh.nom_objet_boss_hebdo,
            bh.nom_boss_hebdo,
            fleurs.image_fleur,
            fleurs.nom_fleur,
            livres.image_livre,
            livres.nom_livre,
            om.image_objet_monstre,
            om.nom_objet_monstre
        FROM personnages p
        LEFT JOIN personnages_pierres pp ON p.id_personnage = pp.id_personnage
        LEFT JOIN pierres ON pp.id_pierre = pierres.id_pierre
        LEFT JOIN personnages_boss pb ON p.id_personnage = pb.id_personnage
        LEFT JOIN boss ON pb.id_boss = boss.id_boss
        LEFT JOIN personnages_boss_hebdo pbh ON p.id_personnage = pbh.id_personnage
        LEFT JOIN boss_hebdo bh ON pbh.id_boss_hebdo = bh.id_boss_hebdo
        LEFT JOIN personnages_fleurs pf ON p.id_personnage = pf.id_personnage
        LEFT JOIN fleurs ON pf.id_fleur = fleurs.id_fleur
        LEFT JOIN personnages_livres pl ON p.id_personnage = pl.id_personnage
        LEFT JOIN livres ON pl.id_livre = livres.id_livre
        LEFT JOIN personnages_objets_monstres pom ON p.id_personnage = pom.id_personnage
        LEFT JOIN objets_monstres om ON pom.id_objet_monstre = om.id_objet_monstre
    """
    # Ajout du filtre si un nom est recherché
    params = []
    if nom_personnage:
        query += " WHERE p.nom_personnage LIKE %s" # %s sécurise la bdd d'injection SQL, tout sera considéré comme paramètres par sql
        params.append(f"%{nom_personnage}%") # LIKE permet une recherche partielle, il trouvera amber avec juste amb par exemple grace aux %' '%

    if tri != "":
        query += f" ORDER BY {tri}"

    cursor.execute(query, params) # Execute la requête stocker dans query et y rajoute le WHERE s'il n'est pas vide.
    items = cursor.fetchall() # Récupère le résultat de la requête et stock dans items

    # Fermer les connexions
    cursor.close()
    db.close()

    # Retourner la page HTML avec les résultats
    return render_template("index copy.html", items=items, nom_recherche=nom_personnage)

# Lancer l'application Flask
if __name__ == "__main__":
    app.run(debug=True,port=5000)