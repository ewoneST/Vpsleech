FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app

RUN pip3 install --no-cache-dir aiofiles aiohttp aioshutil anytree apscheduler aria2p asyncio cloudscraper dnspython feedparser flask gevent google-api-python-client google-auth-httplib2 google-auth-oauthlib gunicorn httpx lxml motor natsort pillow psutil pycryptodome pymongo python-dotenv python-magic pyrofork=2.2.11 requests telegraph tenacity tgcrypto urllib3 uvloop xattr yt-dlp git+https://github.com/hydrogram/hydrogram.git@dev

COPY . .

EXPOSE 80
CMD ["bash", "start.sh"]
