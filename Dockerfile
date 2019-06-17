FROM nginx:latest
RUN  echo '<h1>Hello World</h1><' \
>> index.html
RUN cp /index.html /usr/share/nginx/html




