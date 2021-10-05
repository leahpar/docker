# Docker

## Commandes utiles

### Build et lancement en daemon du container

(à lancer dans le répertoire de `compose.yaml`)

```
docker-compose up -d --build <container>
```

### Bash dans un container

Utilisateur par défaut défini dans le `compose.yaml` ou root par défaut

```
docker exec -it <container> bash
```

Utilisateur explicite

```
docker exec -it --user root <container> bash
```

### Lancement d'un script dans un container

Ex: lancement du serveur symfony

```
docker exec -i <container> bash -c "cd /var/www/toto && symfony server:start -d --port=8001"
```
