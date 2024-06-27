# 🚀 Makefile pour gérer l'environnement Docker inception !
# 👨‍🦱 Merci Léo
# 😵‍💫 

# Importation des variables d'environnement depuis .env
include srcs/.env
export

# Chemins vers les dossiers de données
WORDPRESS_DATA_PATH=$(HOME)/data/wordpress_files
DB_DATA_PATH=$(HOME)/data/wordpress_db

# Commande de base Docker Compose
DC=docker compose -f srcs/docker-compose.yml

all: hosts_add start

start:
	@echo "🚀 vers l'infini et au-delà ..."
	@echo "🏡 on ajoute l'univer dans le fichier hosts"

	$(DC) up -d
	@echo "⏳ Attente que le site soit opérationnel..."
	@echo "✅ Application déployée avec succès! Visitez https://${DOMAIN_NAME} pour voir le résultat!"

stop:
	@echo "🛑 Arrêt des moteurs... On revient sur Terre."
	$(DC) down
	@echo "🏠 Bienvenue à la maison! Application arrêtée."

clean: stop
	@echo "🧹 Nettoyage en cours... On efface les traces de notre passage."
	$(DC) down --rmi all -v
	# Décommentez la ligne suivante pour un nettoyage galactique 🌌
	# docker system prune -a
	@echo "🛁 Tout est propre! Prêt pour une nouvelle aventure."

fclean: clean hosts_remove remove_data
	@echo "🔥 Tout a été incinéré! Plus aucune trace de notre précédente mission."

hosts_add:
	@echo "📝 Ajout de ${DOMAIN_NAME} à /etc/hosts..."
	@sudo hostsed add 127.0.0.1 $(DOMAIN_NAME) && echo "✅ ${DOMAIN_NAME} ajouté avec succès!"

hosts_remove:
	@echo "🗑️ Retrait de ${DOMAIN_NAME} de /etc/hosts..."
	@sudo hostsed rm 127.0.0.1 $(DOMAIN_NAME) && echo "✅ ${DOMAIN_NAME} retiré avec succès!"


remove_data:
	@echo "🧼 Nettoyage des données WordPress et de la base de données..."
	@if [ -d "$(WORDPRESS_DATA_PATH)" ]; then \
	rm -rf $(WORDPRESS_DATA_PATH)/* && \
	echo "✅ Données WordPress vaporisées!"; \
	fi;
	@if [ -d "$(DB_DATA_PATH)" ]; then \
	rm -rf $(DB_DATA_PATH)/* && \
	echo "✅ Données de la base de données désintégrées!"; \
	fi;

re: fclean all
	@echo "🔄 Redémarrage complet de l'univers WordPress... Attachez vos ceintures!"

.PHONY: all start stop clean fclean re remove_data