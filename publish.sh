!#/bin/bash

luarocks make
luarocks pack rule-based-header-transformer
find . -name '*.rockspec' | xargs luarocks upload --api-key=$LUAROCKS_API_KEY
find . -name '*.all.rock' -delete
find . -name '*.src.rock' -delete