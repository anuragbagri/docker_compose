## Manual installation

- Install node.js
- clone the repo

```bash
git clone <repository_url>
cd <repository_name>
```

- Install dependencies(npm install)
- start the db locally (using docker or using the neon tech)
  - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
  - go to neon.tech and get yourself a new db
- Change the .env file and update the credentials
- npx prisma migrate
- npx prisma generate
- npm run build
- npm run start

## Docker installation

database used is postgres db from neon.tech, not from docker postgres....

- Install docker
- start postgres
- docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
- build the image of the app - `docker build -t user_project .`
- start the image of the app - `docker run -p 3000:3000 -d user_project`

## Docker Compose Installation

- Install docker, docker-compose
- Run `docker-compose up`
