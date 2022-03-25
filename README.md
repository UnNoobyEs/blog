<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
Инструкция по запуску проекта
</p>

## Для запуска проекта вам нужно выполнить следующие шаги:

1) Загрузите Composer и Visual Studio Code (или другое IDE) и XAMPP
2) Загрузите Zip-файл с Github и распакуйте его.
3) Откройте проект в вашем IDE и откройте интегрированный терминал (командная строка) / также можно открыть терминал в папке проекта и обновить композер там, если он установлен у вас на ПК
4) Запустите "обновление композитора" (composer update)
5) Переименуйте .env.example в .env
6) Запустите "php artisan key: generate"
7) Установите имя для базы данных - ("blog")
8) Запустите XAMPP, откройте ссылку «http://localhost/phpmyadmin/» и создайте базу данных, назовите базу "blog" и импортируйте файл из папки dump, после выполненного шага данную папку можно удалить.
9) В файле .env поменяйте следующие строки:
 
APP_URL=http://laravel -> APP_URL=http://blog 

DB_DATABASE=laravel -> DB_DATABASE=blog




<p align="center">
Project start instructions
</p>


## To run the project, you need to follow these steps:

1) Download Composer and Visual Studio Code (or other IDE) and XAMPP
2) Download the Zip file from Github and unpack it.
3) Open the project in your IDE and open the integrated terminal (command line) / you can also open the terminal in the project folder. If it've been installed on your PC then update the composer there.
4) Run "composer update" (composer update)
5) Rename .env.example to .env
6) Run "php artisan key: generate"
7) Set the name ("blog") for the database
8) Run XAMPP, open the link "http://localhost/phpmyadmin/" and create a database, name the database "blog" and import the file from the dump folder, after the step this folder can be deleted after the last step.
9) Change the following lines in the .env file:
 
APP_URL=http://laravel -> APP_URL=http://blog 

DB_DATABASE=laravel -> DB_DATABASE=blog
