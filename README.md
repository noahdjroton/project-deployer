# 🚀 Project Deployer

Outils CLI pour automatiser le déploiement de projets Django/DRF avec Nginx, PostgreSQL et Docker.

## 🔧 Installation

```bash
git clone <ce-repo> project-deployer
cd project-deployer
chmod +x install.sh
./install.sh
```

## 🔍 Commandes disponibles

- `deploy_project <project> <port> <domain> <db> <db_user> <db_pass> <ip>`
- `create_pg_db <db> <user> <pass> <ip>`
- `create_nginx_conf <project> <port> <domain>`

## 🎯 Exemple d’utilisation

```bash
deploy_project zenflot 8003 api.zenflot.fr zenflot_db zenflot_admin monmdp 172.26.0.5
```
