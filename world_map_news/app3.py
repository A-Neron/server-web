from flask import Flask, render_template, jsonify
from collections import defaultdict
import asyncio
import aiohttp
import feedparser

app = Flask(__name__)

rss_feeds = {
    "France": ["https://www.france24.com/fr/rss",
               "https://www.lefigaro.fr/rss/figaro_actualites.xml"],
    "Germany": ["https://www.spiegel.de/international/index.rss",
                "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/europe/rss.xml"],
    "United Kingdom": ["http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/uk_politics/rss.xml",
                       "http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/business/rss.xml",
                       "http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/technology/rss.xml"],
    "United States": ["http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml"],
    "Ukraine": ["https://www.unian.info/rss"],
    "Russia": ["https://tass.com/rss/v2.xml"],
    "China": ["https://www.scmp.com/rss/91/feed"],
    "India": ["https://timesofindia.indiatimes.com/rssfeeds/296589292.cms"],
    "Iran": ["https://www.tehrantimes.com/rss"],
    "Australia": ["https://www.abc.net.au/news/feed/51120/rss.xml",
                  "https://www.sbs.com.au/news/feed"],
    "South Korea": ["http://world.kbs.co.kr/rss/rss_news.htm?lang=e"],
    "South Africa": ["https://www.timeslive.co.za/rss/"],
    "Brazil": ["https://g1.globo.com/rss/g1/",
               "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/americas/rss.xml"],
    "Japan": ["https://www.japantimes.co.jp/feed/"],
    "Egypt": ["https://dailynewsegypt.com/feed/",
              "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/middle_east/rss.xml"],
}

async def fetch_feed(session, url):
    try:
        headers = {
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/114.0.0.0 Safari/537.36"
}
        async with session.get(url, headers=headers, timeout=10) as response:
            content = await response.read()
            return url, feedparser.parse(content)
    except Exception as e:
        print(f"Erreur sur {url}: {e}")
        return url, None

async def fetch_all_feeds():
    async with aiohttp.ClientSession() as session:
        tasks = [fetch_feed(session, url) for feeds in rss_feeds.values() for url in feeds]
        return await asyncio.gather(*tasks)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/news')
def get_news():
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    results = loop.run_until_complete(fetch_all_feeds())

    news_by_country = defaultdict(list)
    news_id = 1
    failed_urls = []

    for url, feed in results:
        if feed is None or not feed.entries:
            failed_urls.append(url)
            continue

        country = next((c for c, urls in rss_feeds.items() if url in urls), "Unknown")

        for entry in feed.entries[:3]:
            news_item = {
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