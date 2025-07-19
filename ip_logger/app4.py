from flask import Flask, request, render_template, redirect, url_for, session, render_template_string
from datetime import datetime
import os
import requests

BASE_DIR = os.path.dirname(os.path.abspath(__file__))  # PATH actuel du fichier python
log_path = os.path.join(BASE_DIR, "logs.txt")

app = Flask(__name__)
app.secret_key = 'une-cle-secrete-tres-longue'

def analyse_ip(ip):
    url = f"http://ip-api.com/json/{ip}?fields=status,message,country,regionName,city,zip,lat,lon,timezone,isp,org,as,query"
    try:
        response = requests.get(url, timeout=5)
        data = response.json()

        if data.get("status") != "success":
            return {"erreur": f"API error : {data.get('message', 'inconnue')}"}

        return {
            "IP": data.get("query"),
            "Pays": data.get("country"),
            "Région": data.get("regionName"),
            "Ville": data.get("city"),
            "Code postal": data.get("zip"),
            "Fuseau horaire": data.get("timezone"),
            "FAI": data.get("isp"),
            "Organisation": data.get("org"),
            "AS": data.get("as"),
            "Latitude": data.get("lat"),
            "Longitude": data.get("lon")
        }

    except Exception as e:
        return {"erreur": f"Exception : {str(e)}"}

# Page d'accueil
@app.route('/')
def home():
    return render_template("index.html")

@app.route('/consent')
def consent():
    session['accepted'] = True
    return redirect(url_for('log_visitor'))

# Recuperation des infos IP et log
@app.route('/visit')
def log_visitor():
    if not session.get('accepted'):
        return redirect(url_for('home'))

    ip = request.remote_addr
    infos = analyse_ip(ip)
    user_agent = request.headers.get('User-Agent')
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    langue = request.headers.get('Accept-Language')
    langue_principale = langue.split(',')[0] if langue else "Inconnue"

    # Affichage des informations
    log_lines = [f"Date : {now}"]
    for cle, valeur in infos.items():
        log_lines.append(f"{cle} : {valeur}")
    log_lines.append(f"Langue : {langue_principale}")
    log_lines.append(f"User-Agent : {user_agent}")
    log_lines.append("-" * 40)

    # On assemble les lignes et on écrit
    log_entry = "\n".join(log_lines) + "\n"

    with open(log_path, "a") as f:
        f.write(log_entry)

    return """
        <h1>Merci. Vous pouvez fermer cette page.</h1>
        <a href="/">Retour à l'accueil</a>
    """

# Page de logs
@app.route('/logs')
def show_logs():
    try:
        with open(log_path, 'r') as f:
            logs = f.read()
    except FileNotFoundError:
        logs = "Aucun log trouvé."

    # Affiche le contenu brut dans une balise <pre> pour garder la mise en forme
    return render_template_string("""
        <h1>Logs du serveur</h1>
        <pre style="background:#f0f0f0; padding:10px; border:1px solid #ccc; height:500px; overflow:auto;">
        {{ logs }}
        </pre>
        <a href="/">Retour à l'accueil</a>

        <form action="/vider-logs" method="post" onsubmit="return confirm('Confirmer la suppression des logs ?');">
            <button type="submit">Clear Logs</button>
        </form>
    """, logs=logs)

@app.route('/vider-logs', methods=['POST'])
def vider_logs():
    with open(log_path, 'w') as f:
        f.truncate(0)
    return redirect(url_for('show_logs'))

if __name__ == '__main__':
    app.run(debug=True)