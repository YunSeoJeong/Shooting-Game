execute if entity @s[tag=x] run particle minecraft:dolphin ~-0.5 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,  distance=..10]
execute if entity @s[tag=x] run particle minecraft:dolphin ~-0.25 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player, distance=..10]
execute if entity @s[tag=x] run particle minecraft:dolphin ~0.0 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,   distance=..10]
execute if entity @s[tag=x] run particle minecraft:dolphin ~0.25 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,  distance=..10]
execute if entity @s[tag=x] run particle minecraft:dolphin ~0.5 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,   distance=..10]

execute if entity @s[tag=y] run particle minecraft:dolphin ~0.0 ~-0.5 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,  distance=..10]
execute if entity @s[tag=y] run particle minecraft:dolphin ~0.0 ~-0.25 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player, distance=..10]
execute if entity @s[tag=y] run particle minecraft:dolphin ~0.0 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,   distance=..10]
execute if entity @s[tag=y] run particle minecraft:dolphin ~0.0 ~0.25 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,  distance=..10]
execute if entity @s[tag=y] run particle minecraft:dolphin ~0.0 ~0.5 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,   distance=..10]

execute if entity @s[tag=z] run particle minecraft:dolphin ~0.0 ~0.0 ~-0.5 0.001 0.001 0.001 1 1 force @a[tag=player,  distance=..10]
execute if entity @s[tag=z] run particle minecraft:dolphin ~0.0 ~0.0 ~-0.25 0.001 0.001 0.001 1 1 force @a[tag=player, distance=..10]
execute if entity @s[tag=z] run particle minecraft:dolphin ~0.0 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player,   distance=..10]
execute if entity @s[tag=z] run particle minecraft:dolphin ~0.0 ~0.0 ~0.25 0.001 0.001 0.001 1 1 force @a[tag=player,  distance=..10]
execute if entity @s[tag=z] run particle minecraft:dolphin ~0.0 ~0.0 ~0.5 0.001 0.001 0.001 1 1 force @a[tag=player,   distance=..10]

execute if score @s sideCount matches 2.. run kill @e[tag=tile, distance=..0.1]