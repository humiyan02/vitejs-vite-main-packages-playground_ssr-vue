FROM node:14.16.0-stretch

RUN mkdir -p /var/www/sampleproject
WORKDIR /var/www/sampleproject
COPY ./ /var/www/sampleproject
RUN yarn install --production

RUN npm run build

EXPOSE 3000

ENTRYPOINT ["npm", "run", "serve"]