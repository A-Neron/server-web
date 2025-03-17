import random
from flask import Flask, request, jsonify, render_template
import mysql.connector

app = Flask(__name__)

# Fonction pour se connecter à la base de données
def get_db_connection():
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="toto",
        database="valo_agent"
    )
    return conn

# Récupérer les agents depuis la base de données
def get_agents():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM agents WHERE id_agent != 8") # nom_agent, role_agent, image_agent, image_role
    agents = cursor.fetchall()  # Récupère tous les agents sous forme de dictionnaires
    cursor.close()
    conn.close()
    return agents

@app.route('/')
def index():
   return render_template('random.html')

@app.route('/pick', methods=['POST'])
def random_pick():
    try:
        nb_agents = int(request.form['nb_agents'])
        agents = get_agents()
        random.shuffle(agents)# Mélange les agents pour une sélection aléatoire
        
        selected_agents = agents[:nb_agents]# Sélectionne les N premiers agents sans doublon
        
        return jsonify(selected_agents)# Renvoie les informations des agents sélectionnés
    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == '__main__':
    app.run(debug=True,port=5001)