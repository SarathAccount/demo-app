FROM nginx:stable

COPY . /usr/local/app/

WORKDIR /usr/local/app

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /usr/share/nginx/html/*

COPY  ./.next /usr/share/nginx/html

EXPOSE 3000 80

CMD ["npm", "run dev"]