
version: '3.3'
services:
  db:
    image: mysql:8.0.19
    command: --default-authentication-plugin=mysql_native_password
    volumes:
      - db_data:/var/lib/mysql
    restart: always
    environment:
      - MYSQL_ROOT_PASSWORD=Mujahidjani#28
      - MYSQL_DATABASE=wordpress
      - MYSQL_USER=mujahid
      - MYSQL_PASSWORD=admin123
    expose:
      - "3306"
      - "33060"

  wordpress:
    image: wordpress:latest
    ports:
      - "80:80"
    restart: always
    environment:
      - WORDPRESS_DB_HOST=db
      - WORDPRESS_DB_USER=mujahid
      - WORDPRESS_DB_PASSWORD=admin123
      - WORDPRESS_DB_NAME=wordpress

volumes:
  db_data:
