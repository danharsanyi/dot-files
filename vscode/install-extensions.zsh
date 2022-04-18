#!/bin/bash

# Visual Studio Code :: Package list
pkglist=(
  bradlc.vscode-tailwindcss
  bung87.rails
  bung87.vscode-gemfile
  castwide.solargraph
  daylerees.rainglow
  dbaeumer.vscode-eslint
  eamodio.gitlens
  esbenp.prettier-vscode
  kamikillerto.vscode-colorize
  mathiasfrohlich.Kotlin
  noku.rails-run-spec-vscode
  rebornix.ruby
  sianglim.slim
  VisualStudioExptTeam.vscodeintellicode
  vscode-icons-team.vscode-icons
  wingrunr21.vscode-ruby
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
