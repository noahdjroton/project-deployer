#!/bin/bash

set -e

TOOLS_DIR="/opt/project-tools"

echo "✅ Création du dossier $TOOLS_DIR..."
sudo mkdir -p $TOOLS_DIR

echo "📁 Copie des scripts dans $TOOLS_DIR..."
sudo cp tools/* $TOOLS_DIR/
sudo chmod +x $TOOLS_DIR/*

if ! grep -Fxq "export PATH=\$PATH:$TOOLS_DIR" ~/.bashrc; then
  echo "📦 Mise à jour de ~/.bashrc..."
  echo "export PATH=\$PATH:$TOOLS_DIR" >> ~/.bashrc
  source ~/.bashrc
  echo "✅ PATH mis à jour. Redémarre le terminal ou fais 'source ~/.bashrc'."
else
  echo "ℹ️ Le chemin $TOOLS_DIR est déjà dans le PATH."
fi

echo "🎉 Installation terminée ! Tu peux maintenant utiliser les commandes suivantes de n'importe où :"
ls $TOOLS_DIR
