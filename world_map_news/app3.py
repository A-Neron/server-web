### DEPENDENCIES ###

from flask import Flask, render_template, jsonify # framework web léger, render_template pour afficher des templates HTML, jsonify pour renvoyer des données JSON
from collections import defaultdict # dictionnaire avec une valeur par défaut automatique si la clé n'existe pas
import asyncio # permet d'écrire du code asynchrone, utile pour gérer plusieurs tâches en parallèle
import aiohttp # client HTTP asynchrone, pour faire des requêtes web sans bloquer l'exécution
import feedparser # lire et parser facilement des flux RSS/Atom

app = Flask(__name__) # Création de l'application Flask

# Dictionnaire contenant les flux RSS pour chaque pays
rss_feeds = { 
    "World": [
        "https://www.aljazeera.com/xml/rss/all.xml",
        "https://rss.nytimes.com/services/xml/rss/nyt/World.xml",
        "https://www.reuters.com/tools/rss",
        "https://www.bbc.co.uk/news/world/rss.xml",
        "https://www.bbc.com/afrique/rss.xml",
        "https://www.france24.com/fr/rss",
        "https://www.courrierinternational.com/rss",
        "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/middle_east/rss.xml",
        ],
    "Europe": [
        "https://www.euronews.com/rss?level=theme&name=world",
        "https://www.euronews.com/rss?level=theme&name=europe",
        "https://www.euronews.com/rss?level=theme&name=business",
        "https://www.euronews.com/rss?level=theme&name=science",
        "https://www.france24.com/fr/europe/rss",
        ],
    "France": [
        "https://www.lemonde.fr/rss/une.xml",
        "https://www.lefigaro.fr/rss/figaro_actualites.xml"
        ],
    "Germany": [
        "https://www.spiegel.de/international/index.rss",
        "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/europe/rss.xml",
        ],
    "United Kingdom": [
        "http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/uk_politics/rss.xml",
        "http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/business/rss.xml",
        "http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/technology/rss.xml"
        ],
    "United States": ["http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml"],
    "Ukraine": ["https://www.france24.com/fr/tag/ukraine/rss"],
    "Russia": [
        "https://tass.com/rss/v2.xml",
        "https://tass.ru/rss/v2.xml",
        "https://www.vedomosti.ru/rss/news"
        ],
    "China": ["https://www.scmp.com/rss/91/feed"],
    "India": ["https://timesofindia.indiatimes.com/rssfeeds/296589292.cms"],
    "Iran": ["https://www.tehrantimes.com/rss"],
    "Australia": [
        "https://www.abc.net.au/news/feed/51120/rss.xml",
        "https://www.sbs.com.au/news/feed"
        ],
    "South Korea": ["http://world.kbs.co.kr/rss/rss_news.htm?lang=e"],
    "South Africa": ["https://www.timeslive.co.za/rss/"],
    "Brazil": [
        "https://g1.globo.com/rss/g1/",
        "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/americas/rss.xml"
        ],
    "Japan": ["https://www.japantimes.co.jp/feed/"],
    "Egypt": ["https://dailynewsegypt.com/feed/",],
    "Argentina": ["https://www.clarin.com/rss/"],
    "Norway": ["https://www.aftenposten.no/rss/"],
    "Canada": ["https://www.cbc.ca/cmlink/rss-topstories"],
    "Spain": ["https://estaticos.elmundo.es/elmundo/rss/espana.xml"],
    "Italy": ["https://www.repubblica.it/rss/homepage/rss2.0.xml"],
    "Colombia": ["https://www.eltiempo.com/rss/colombia.xml"],
    "Nigeria": ["https://guardian.ng/feed/"],
    "Algeria": ["https://www.tsa-algerie.com/feed/"],
}

# Une fonction asynchrone (async def) est une fonction non bloquante permettant d'exécuter plusieurs tâches en parallèle sans attendre la fin de chaque tâche avant de commencer la suivante.
async def fetch_feed(session, url): # Fonction asynchrone pour récupérer un flux RSS
    try:
        headers = { # header customisé pour éviter les blocages par certains serveurs, montrer que je suis un navigateur et non un bot
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/114.0.0.0 Safari/537.36"
            }
        async with session.get(url, headers=headers, timeout=10) as response: # faire une requête GET asynchrone
            content = await response.read() # lire le contenu de la réponse
            return url, feedparser.parse(content) # retourner l'URL et le contenu parsé du flux RSS
    except Exception as e:
        print(f"Erreur sur {url}: {e}")
        return url, None

async def fetch_all_feeds(): # Fonction asynchrone pour récupérer tous les flux RSS
    async with aiohttp.ClientSession() as session: # créer une session HTTP asynchrone
        tasks = [fetch_feed(session, url) for feeds in rss_feeds.values() for url in feeds] # créer une liste de tâches pour chaque flux RSS
        return await asyncio.gather(*tasks) # exécuter toutes les tâches en parallèle et attendre leurs résultats

# Retourne la page HTML principale quand un utilisateur se connecte
@app.route('/')
def index():
    return render_template('index.html')

# Liens ou le js récupère les données RSS envoyer par le serveur flask
@app.route('/api/news')
def get_news():
    # Crée une boucle d'événements asynchrone pour récupérer les flux RSS
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    results = loop.run_until_complete(fetch_all_feeds())

    news_by_country = defaultdict(list) # Dictionnaire pour stocker les nouvelles par pays
    news_id = 1 # Identifiant unique pour chaque nouvelle
    failed_urls = [] # Liste pour stocker les URLs des flux RSS qui ont échoué ou sont vides

    # Parcourt les résultats des flux RSS récupérés et les envoie dans 'failed_urls' si le flux est vide ou n'existe pas
    for url, feed in results:
        if feed is None or not feed.entries:
            failed_urls.append(url)
            continue

        country = next((c for c, urls in rss_feeds.items() if url in urls), "Unknown") # Trouve le pays correspondant à l'URL du flux RSS

        for entry in feed.entries[:3]: # Limite à 3 nouvelles par flux RSS
            news_item = { # dictionnaire contenant les informations de la nouvelle
                "id": news_id,
                "title": entry.title,
                "date": entry.get("published", ""),
                "link": entry.link,
                "summary": entry.get("summary", "")
            }
            news_by_country[country].append(news_item)
            news_id += 1

    news_by_country["__errors__"] = failed_urls
    return jsonify(news_by_country)

if __name__ == '__main__':
    app.run(debug=True)