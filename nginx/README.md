# Nginx

### Running Nginx and config

The default nginx conf file is edited, `sendfile` is disabled to prevent caching and volume mount problems.


| Description                       | Command(s)                 | Info                                         |
|-----------------------------------|----------------------------|----------------------------------------------|
| run your static website           | http://localhost:80        |                                              |
| edit the nginx configuration file | nano /etc/nginx/nginx.conf | depending on your environment use su or sudo |
| test the nginx configuration file | nginx -t                   |                                              |
| nginx restart                     | nginx -s reload            |                                              |
| nginx directory                   | cd /etc/nginx/html         |                                              |
| location of nginx (error) logs    | /var/log/nginx/error.log   |                                              |

