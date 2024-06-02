FROM ghcr.io/puppeteer/puppeteer:22.7.1
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /usr/app

COPY package*.json ./
RUN npm ci 
COPY . .
CMD ["NODE", "app.js"]