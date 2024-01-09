#!/bin/sh

for f in confs/*; do
    cp -r "$f" "$HOME/.${f#*/}"
done
