FROM node:14-alpine
WORKDIR /srv/app
COPY . .
RUN apk add chromium
RUN npm install -g serverless
RUN yarn install
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
CMD ["npm", "run", "offline"]