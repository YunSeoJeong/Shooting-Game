summon marker ~ ~ ~ {Tags:["tile","x"]}
summon marker ~ ~ ~ {Tags:["tile","x"]}
summon marker ~ ~ ~ {Tags:["tile","x"]}
summon marker ~ ~ ~ {Tags:["tile","x"]}

summon marker ~ ~ ~ {Tags:["tile","y"]}
summon marker ~ ~ ~ {Tags:["tile","y"]}
summon marker ~ ~ ~ {Tags:["tile","y"]}
summon marker ~ ~ ~ {Tags:["tile","y"]}

summon marker ~ ~ ~ {Tags:["tile","z"]}
summon marker ~ ~ ~ {Tags:["tile","z"]}
summon marker ~ ~ ~ {Tags:["tile","z"]}
summon marker ~ ~ ~ {Tags:["tile","z"]}

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

kill