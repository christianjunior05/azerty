# Utilisez une image de base légère avec Node.js préinstallé
FROM christ05/app:latest

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier package.json dans le conteneur
COPY package.json .


# Copiez tous les fichiers de l'application dans le conteneur
COPY . .

# Définir le port sur lequel l'application écoutera
EXPOSE 80

# Démarrez l'application
CMD ["npm", "start"]