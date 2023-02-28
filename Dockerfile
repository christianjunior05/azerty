# Utilisez une image légère d'Apache pour héberger votre site web
FROM christ05:latest 

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/local/apache2/htdocs/

# Copiez les fichiers HTML et les fichiers de ressources de votre site web 
# depuis votre machine locale dans le conteneur
COPY index.html .

# Exposez le port 80 pour permettre l'accès au site web
EXPOSE 80

# Démarrez Apache lorsque le conteneur est lancé
CMD ["httpd-foreground"]
