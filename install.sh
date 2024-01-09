#!/bin/sh

for c in confs/*; do
    cp -r "$c" "$HOME/.${c#*/}"
done

for f in fonts/*; do
    cp "$f" /usr/share/fonts/
done
