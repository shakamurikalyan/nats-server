FROM node:16

WORKDIR /app

COPY . .

EXPOSE 9697 

CMD ["npm run start"]