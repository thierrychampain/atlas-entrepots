#!/bin/sh
# Recopie la carte de l'Atlas (index.html et ses fichiers .js) dans ce dépôt public.
# À relancer après map_data.py / map_clients.py / map_entreprises.py, puis commit et push.
set -e
DEPOT="$(cd "$(dirname "$0")/.." && pwd)"
CARTE="/Users/thierrychampain/Documents/Atlas des entrepots de france/groupes/carte"
rsync -a --include='*.html' --include='*.js' --exclude='*' "$CARTE/" "$DEPOT/"
echo "Carte synchronisée."
