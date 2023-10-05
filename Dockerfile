# Utilisez une image de base contenant WordPress
FROM wordpress:latest

# Spécifiez les valeurs requises pour la configuration de la base de données WordPress en utilisant ENV
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=ilovedevops
ENV WORDPRESS_DB_NAME=wordpress
ENV WORDPRESS_DB_HOST=0.0.0.0
