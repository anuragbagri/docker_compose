FROM node:22-alpine

WORKDIR /app

COPY ./package.json  ./package.json
Copy ./package-lock.json  ./package-lock.json

RUN npm install

COPY . .

ENV DATABASE_URL = postgresql://neondb_owner:npg_pvnhiCXV5b6W@ep-aged-block-a86t8b3m-pooler.eastus2.azure.neon.tech/neondb?sslmode=require


RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build 

CMD ["npm","start"]

