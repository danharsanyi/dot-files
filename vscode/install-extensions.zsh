#!/bin/bash

# Visual Studio Code :: Package list
pkglist=(
  bradlc.vscode-tailwindcss
  chakrounanas.turbo-console-log
  DavidAnson.vscode-markdownlint
  daylerees.rainglow
  dbaeumer.vscode-eslint
  eamodio.gitlens
  esbenp.prettier-vscode
  GraphQL.vscode-graphql
  GraphQL.vscode-graphql-syntax
  kamikillerto.vscode-colorize
  ms-azuretools.vscode-docker
  streetsidesoftware.code-spell-checker
  VisualStudioExptTeam.vscodeintellicode
  vscode-icons-team.vscode-icons
  xabikos.JavaScriptSnippets
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
