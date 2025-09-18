# Використовуємо готовий образ Nginx
FROM nginx:alpine

# Копіюємо всі файли проєкту у папку, яку показує Nginx
COPY . /usr/share/nginx/html

# Відкриваємо порт 80
EXPOSE 80
