server {

        listen   80;
        server_name example.com;

        #listen  443 ssl;
        #ssl_certificate     /root/.ssh/example.com.crt;
        #ssl_certificate_key /root/.ssh/example.com.key;


        access_log /var/www/example.com/logs/access.log;
        error_log /var/www/example.com/logs/error.log;

        location /downloads {
                index nothing_will_match;
                autoindex on;
                root /var/www/example.com/public/;
        }

        #location /html {
        #       proxy_pass http://127.0.0.1:7070/html;
        #}
        location /appdev {

                index nothing_will_match;
                root /home/alira/git/ion/sdk/js/demo/dist/;


        }
        location / {
                #proxy_pass  http://127.0.0.1:8443;
                proxy_pass http://127.0.0.1:7070;
                proxy_set_header HOST $host;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Forwarded-Proto $scheme;
                proxy_pass_request_headers on;
                proxy_http_version 1.0;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection "Upgrade";

      }
}
