#!/bin/sh

cd datapack
echo "tellraw @s \"commit $(git rev-parse HEAD)\"" > data/funnyitem/function/version.mcfunction
zip -r ../funnyitem.zip data/ pack.mcmeta
cd ..

