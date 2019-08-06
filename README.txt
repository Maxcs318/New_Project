# Gama_Project


file httpd-vhosts.conf add

<VirtualHost *:80>
    ServerAdmin gamaproject.vue.com
    DocumentRoot "C:/xampp/htdocs/gama_project/public/"
    ServerName  gamaproject.vue.com
    ##ErrorLog "logs/dummy-host2.example.com-error.log"
    ##CustomLog "logs/dummy-host2.example.com-access.log" common
</VirtualHost>





file hosts add

127.0.0.1	gamaproject.vue.com
