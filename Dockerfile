# Використовуємо легкий образ Nginx
FROM nginx:alpine

# Видаляємо дефолтну сторінку
RUN rm -rf /usr/share/nginx/html/*

# Копіюємо всі файли з репозиторію у папку для Nginx
COPY . /usr/share/nginx/html

# Відкриваємо порт 80
EXPOSE 80

# Запускаємо Nginx у форграунді
CMD ["nginx", "-g", "daemon off;"]

