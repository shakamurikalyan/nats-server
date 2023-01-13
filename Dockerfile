FROM node:16

WORKDIR /app

COPY . /app

EXPOSE 9697 

CMD ["npm run start"]