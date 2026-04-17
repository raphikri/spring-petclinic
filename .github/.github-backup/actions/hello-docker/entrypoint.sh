#!/bin/sh

# Récupérer l'input message
MESSAGE="$INPUT_MESSAGE"

# Afficher le message dans les logs
echo "$MESSAGE"

# Définir l'output pour les étapes suivantes
echo "::set-output name=output-message::$MESSAGE"