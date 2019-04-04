#!/bin/sh

# Configurate Git easily.

echo Your username?
read NAME
echo Your e-mail?
read EMAIL
echo Write out your favorite editor, please.
read EDITOR

echo Where to save config (gl=globally, lc=locally (repository), sys=system)?
read WHERE

if [[ $WHERE=="gl" ]]; then
export config=--global
fi

if [[ $WHERE=="lc" ]]; then
export config=--local
fi

if [[ $WHERE=="sys" ]]; then
export config=--system
fi

git config $config user.name $NAME
git config $config user.email $EMAIL
git config $config core.editor $EDITOR
