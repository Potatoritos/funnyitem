#!/bin/sh

cd datapack
echo "tellraw @s {\"text\":\"potatoritos funny items (commit $(git rev-parse HEAD))\",\"color\":\"aqua\"}" > data/funnyitem/function/version.mcfunction
zip -r ../funnyitem.zip data/ pack.mcmeta
cd ..

