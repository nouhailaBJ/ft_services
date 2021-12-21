# ft_service

here is my ft_services project
Ce sujet a pour but d’approfondir vos connaissances en vous faisant utiliser Kubernetes afin de vous faire virtualiser un réseau et de vous faire découvrir à quoi ressemble
réellement un environnement de production. Vous allez faire ce qu’on appelle du "clusturing".

Required : <br>
• Le dashboard web de Kubernetes. Celui-ci est utile pour gérer votre cluster. <br>
• Un Load Balancer qui gère l’accès externe à vos services dans un cluster. C’est <br>
uniquement lui qui vous servira pour exposer vos services. Vous devez garder <br>
les ports propres aux services (IP :3000 pour Grafana etc). Le Load Balancer <br>
n’utilisera qu’une seule ip. <br>
• Un WordPress ouvert sur le port 5050, fonctionnant avec une base de données <br>
MySQL. Les deux devront être dans deux containers distincts. Le WordPress devra <br>
comporter plusieurs utilisateurs et un administrateur. WordPress aura son propre <br>
serveur nginx. Le Load Balancer devra donc pouvoir directement rediriger sur ce <br>
service. <br>
• phpMyAdmin, tournant sur le port 5000 et relié à la base de données MySQL. <br>
PhpMyAdmin aura son propre serveur nginx. Le Load Balancer devra donc pouvoir <br>
directement rediriger sur ce service. <br>
• Un container containant un serveur nginx ouvert sur les ports 80 et 443. Le port <br>
80 sera en http et devra faire une redirection systématique de type 301 vers le 443, <br>
qui sera lui en https. <br>
La page affichée n’a pas d’importance, tant que ce n’est pas une erreur http. <br>
Ce container dera permettre d’accéder à une route /wordpress qui fait un redirect <br>
307 vers IP :WPPORT. <br>
Il devra aussi permettre d’accéder à /phpmyadmin avec un reverse proxy vers <br>
IP :PMAPORT. <br>
• Un serveur FTPS ouvert sur le port 21. <br>
• Un Grafana, accessible sur le port 3000, fonctionnant avec une base de données <br>
InfluxDB. Celui-ci devra vous permettre de monitorer tous vos containers. Les <br>
deux devront aussi être dans deux containers distincts. Vous devrez créer un dashboard par container. <br>
• En cas de crash ou d’arrêt d’un des deux containers de base de données, vous <br>
devrez vous assurer que celles-ci puissent persister et ne soient pas perdues. En <br>
cas de suppression, les volumes où la data est sauvegardée doivent persister. <br>
• Chacun de vos containers devra pouvoir redémarrer automatiquement en cas de <br>
crash ou d’arrêt d’un des éléments le composant. <br>
