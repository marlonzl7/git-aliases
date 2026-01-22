#!/usr/bin/env bash

ALIASES_FILE="$HOME/.git-aliases.sh"
BASHRC="$HOME/.bashrc"

echo "Instalando Git aliases..."

cp git-aliases.sh "$ALIASES_FILE"

if ! grep -q "source ~/.git-aliases.sh" "$BASHRC"; then
  echo "" >> "$BASHRC"
  echo "# Git aliases" >> "$BASHRC"
  echo "source ~/.git-aliases.sh" >> "$BASHRC"
fi

echo "Aliases instalados com sucesso!"
echo "Recarregue o shell com: source ~/.bashrc"
