## eCom

1. Clone Project
> git clone https://github.com/tmlsergen/eCom.git

2. copy .env file
> ln -s .env.development .env

2. Build Docker Containers
> docker-compose build --no-cache

3. Starting Docker Containers (For backroud you can use '-d')
> docker-compose up

4. Composer install
> docker exec -ti eCom_app composer install

------(You must generate app key)-------------
> docker exec -ti eCom_app php artisan key:generate

5. For migrations but i recomend to use sql file in Db file sql
> docker exec -ti eCom_app php artisan migrate --seed

6. You may need Node Modules and build scss or vue
> npm install

7. You can access container bash
> docker exec -ti eCom_app /bin/bash



> npm run dev

