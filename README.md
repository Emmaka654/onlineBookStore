# Документация по запуску OnlineBookStore

## Клонирование репозитория
1. Склонируйте репозиторий с помощью команды:
   
   git clone https://github.com/Emmaka654/onlineBookStore
   

## Установка зависимостей
1. Убедитесь, что у вас установлен Maven.
2. Перейдите в корневую директорию проекта.
3. Выполните команду для установки всех зависимостей:
   
   mvn clean install
   

## Запуск приложения
1. Перейдите в класс src/main/java/com/onlineBookStore/OnlineBookStoreApplication.java.
2. Запустите приложение, выполнив этот класс.

## Проверка БД
1. Скачайте резервную копию базы данных DataBaseOnlineBookStore.sql.
2. Запустите pgAdmin 4.
3. Восстановите базу данных.
4. Подключите к приложению.
5. Проверьте, что данные обновляются путем выполнения запросов.
   
## Проверка запросов Postman
1. Импортируйте коллекцию запросов Postman из файла "collection OnlineBookStore.json".
2. Проверьте каждый запрос, убедившись, что он выполняется успешно и возвращает ожидаемые результаты.

## Описание всех зависимостей
1. org.springframework.boot:spring-boot-starter-data-jpa
   - Предоставляет стандартные зависимости для работы с JPA (Java Persistence API) в Spring Boot.

2. org.springframework.boot:spring-boot-starter-web
   - Предоставляет стандартные зависимости для разработки веб-приложений с использованием Spring Boot.

3. org.springframework.boot:spring-boot-devtools
   - Предоставляет инструменты для удобной разработки приложений Spring Boot, такие как автоматическая перезагрузка при изменениях.

4. org.postgresql:postgresql
   - Драйвер JDBC для работы с PostgreSQL базой данных.

5. org.projectlombok:lombok
   - Библиотека для упрощения разработки Java-приложений путем автоматической генерации методов, конструкторов и других элементов кода.

6. org.springframework.boot:spring-boot-starter-test
   - Предоставляет зависимости для тестирования приложений Spring Boot.
   - Исключает зависимость org.junit.vintage:junit-vintage-engine, которая может вызывать конфликты версий JUnit.