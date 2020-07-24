#!/usr/bin/env bash

sudo make dist

echo "Usuwam stary folder"

rm -rf ~/.local/share/gnome-shell/extensions/contact@projecthamster.org

echo "Tworze nowy folder i kopiuje pliki"

mkdir -p ~/.local/share/gnome-shell/extensions/contact@projecthamster.org
tar xfz dist/contact@projecthamster.org.tar.gz -C ~/.local/share/gnome-shell/extensions/contact@projecthamster.org

echo "Resetuje GNOMA"

busctl --user call org.gnome.Shell /org/gnome/Shell org.gnome.Shell Eval s 'Meta.restart("Restarting…")'
