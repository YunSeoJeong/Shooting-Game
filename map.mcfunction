<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
summon marker ~ ~ ~ {Tags:["tile","x"]}
summon marker ~ ~ ~ {Tags:["tile","x"]}
summon marker ~ ~ ~ {Tags:["tile","x"]}
summon marker ~ ~ ~ {Tags:["tile","x"]}
=======
=======
>>>>>>> parent of aa84ed6 (오와리다 시이이이발)
=======
>>>>>>> parent of aa84ed6 (오와리다 시이이이발)
summon marker ~ ~1 ~0.5 {Tags:["tile","x"]}
summon marker ~ ~1 ~-0.5 {Tags:["tile","x"]}
summon marker ~ ~ ~0.5 {Tags:["tile","x"]}
summon marker ~ ~ ~-0.5 {Tags:["tile","x"]}
<<<<<<< HEAD
<<<<<<< HEAD

summon marker ~0.5 ~0.5 ~0.5 {Tags:["tile","y"]}
summon marker ~0.5 ~0.5 ~-0.5 {Tags:["tile","y"]}
summon marker ~-0.5 ~0.5 ~0.5 {Tags:["tile","y"]}
summon marker ~-0.5 ~0.5 ~-0.5 {Tags:["tile","y"]}
>>>>>>> parent of aa84ed6 (오와리다 시이이이발)

summon marker ~0.5 ~1 ~ {Tags:["tile","z"]}
summon marker ~0.5 ~ ~ {Tags:["tile","z"]}
summon marker ~-0.5 ~1 ~ {Tags:["tile","z"]}
summon marker ~-0.5 ~ ~ {Tags:["tile","z"]}

summon marker ~ ~0.5 ~ {Tags:["counter"]}

<<<<<<< HEAD
scoreboard players set @e[tag=tile, distance=..0.1] sideCount 0

tp @e[tag=tile, tag=x, distance=..0.1, limit=1] ~ ~0.5 ~0.5
tp @e[tag=tile, tag=x, distance=..0.1, limit=1] ~ ~0.5 ~-0.5
tp @e[tag=tile, tag=x, distance=..0.1, limit=1] ~ ~-0.5 ~0.5
tp @e[tag=tile, tag=x, distance=..0.1, limit=1] ~ ~-0.5 ~-0.5

tp @e[tag=tile, tag=y, distance=..0.1, limit=1] ~0.5 ~ ~0.5
tp @e[tag=tile, tag=y, distance=..0.1, limit=1] ~0.5 ~ ~-0.5
tp @e[tag=tile, tag=y, distance=..0.1, limit=1] ~-0.5 ~ ~0.5
tp @e[tag=tile, tag=y, distance=..0.1, limit=1] ~-0.5 ~ ~-0.5

tp @e[tag=tile, tag=z, distance=..0.1, limit=1] ~0.5 ~0.5 ~
tp @e[tag=tile, tag=z, distance=..0.1, limit=1] ~0.5 ~-0.5 ~
tp @e[tag=tile, tag=z, distance=..0.1, limit=1] ~-0.5 ~0.5 ~
tp @e[tag=tile, tag=z, distance=..0.1, limit=1] ~-0.5 ~-0.5 ~

scoreboard players add @e[tag=tile, distance=..0.8] sideCount 1

execute unless block ~1 ~ ~ air unless block ~1 ~ ~ grass_block unless block ~1 ~ ~ dirt run summon shulker ~1 ~ ~
execute unless block ~-1 ~ ~ air unless block ~-1 ~ ~ grass_block unless block ~-1 ~ ~ dirt run summon shulker ~-1 ~ ~

execute unless block ~ ~1 ~ air unless block ~ ~1 ~ grass_block unless block ~ ~1 ~ dirt run summon shulker ~ ~1 ~
execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ dirt run summon shulker ~ ~-1 ~

execute unless block ~ ~ ~1 air unless block ~ ~ ~1 grass_block unless block ~ ~ ~1 dirt run summon shulker ~ ~ ~1
execute unless block ~ ~ ~-1 air unless block ~ ~ ~-1 grass_block unless block ~ ~ ~-1 dirt run summon shulker ~ ~ ~-1

=======
setblock ~ ~ ~ stone
>>>>>>> parent of aa84ed6 (오와리다 시이이이발)
=======

summon marker ~0.5 ~0.5 ~0.5 {Tags:["tile","y"]}
summon marker ~0.5 ~0.5 ~-0.5 {Tags:["tile","y"]}
summon marker ~-0.5 ~0.5 ~0.5 {Tags:["tile","y"]}
summon marker ~-0.5 ~0.5 ~-0.5 {Tags:["tile","y"]}

summon marker ~0.5 ~1 ~ {Tags:["tile","z"]}
summon marker ~0.5 ~ ~ {Tags:["tile","z"]}
summon marker ~-0.5 ~1 ~ {Tags:["tile","z"]}
summon marker ~-0.5 ~ ~ {Tags:["tile","z"]}

summon marker ~ ~0.5 ~ {Tags:["counter"]}

setblock ~ ~ ~ stone
>>>>>>> parent of aa84ed6 (오와리다 시이이이발)
=======

summon marker ~0.5 ~0.5 ~0.5 {Tags:["tile","y"]}
summon marker ~0.5 ~0.5 ~-0.5 {Tags:["tile","y"]}
summon marker ~-0.5 ~0.5 ~0.5 {Tags:["tile","y"]}
summon marker ~-0.5 ~0.5 ~-0.5 {Tags:["tile","y"]}

summon marker ~0.5 ~1 ~ {Tags:["tile","z"]}
summon marker ~0.5 ~ ~ {Tags:["tile","z"]}
summon marker ~-0.5 ~1 ~ {Tags:["tile","z"]}
summon marker ~-0.5 ~ ~ {Tags:["tile","z"]}

summon marker ~ ~0.5 ~ {Tags:["counter"]}

setblock ~ ~ ~ stone
>>>>>>> parent of aa84ed6 (오와리다 시이이이발)
kill