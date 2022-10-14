FROM nginx

# Configuration

COPY ./nginx.conf.d/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf.d/other.conf /etc/nginx/includes/other.conf

# HTML
COPY html/ /usr/share/nginx/html
