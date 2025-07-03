from flask import Flask,render_template, jsonify
from collections import defaultdict
import feedparser

app = Flask(__name__)

# Liste des flux RSS par pays
rss_feeds = {
    "France": ["https://www.france24.com/fr/rss"],
    "United States": ["http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml"],
    "Ukraine": ["https://www.unian.info/rss"],
    "Russia": ["https://tass.com/rss/v2.xml"],
    "China": ["https://www.scmp.com/rss/91/feed"],
    "India": ["https://timesofindia.indiatimes.com/rssfeeds/296589292.cms"],
    "Israel": ["https://www.timesofisrael.com/feed/","https://israelnow.news/feed/"],
    "Iran": ["https://www.tehrantimes.com/rss"],
    "Groenland": ["https://www.rfi.fr/en/tag/greenland/rss"]
    # Ajoute d'autres pays et leurs flux RSS ici
}

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/news')
def get_news():
    news_by_country = defaultdict(list)
    news_id = 1
    for country, feeds in rss_feeds.items():
        for url in feeds:
            feed = feedparser.parse(url)
            for entry in feed.entries[:3]:
                print(entry.title, " - country:", country)
                news_item = {
                    "id": news_id,
                    "title": entry.title,
                    "date": entry.get("published", ""),
                    "link": entry.link,
                    "summary": entry.get("summary", "")
                }
                news_by_country[country].append(news_item)
                news_id += 1
    return jsonify(news_by_country)

if __name__ == '__main__':
    app.run(debug=True)