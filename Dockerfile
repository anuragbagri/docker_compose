FROM node:22-alpine

WORKDIR /app

COPY ./package.json  ./package.json
COPY ./package-lock.json  ./package-lock.json

RUN npm install 
RUN npm install -D typescript 

COPY . .

ENV DATABASE_URL=postgresql://neondb_owner:npg_pvnhiCXV5b6W@ep-aged-block-a86t8b3m-pooler.eastus2.azure.neon.tech/neondb?sslmode=require


RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

CMD ["npm","start"]

