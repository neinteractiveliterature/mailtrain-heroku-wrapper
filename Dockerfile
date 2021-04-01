FROM mailtrain/mailtrain

RUN apk add --no-cache nginx gettext

RUN mkdir /etc/nginx/templates /run/nginx
COPY mailtrain.conf.template /etc/nginx/templates
COPY start-nginx.sh heroku-entrypoint.sh /app

ENTRYPOINT /app/heroku-entrypoint.sh
