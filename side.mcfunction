execute if entity @s[tag=x] run particle minecraft:bubble ~-0.5 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=x] run particle minecraft:bubble ~-0.25 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=x] run particle minecraft:bubble ~0.0 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=x] run particle minecraft:bubble ~0.25 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=x] run particle minecraft:bubble ~0.5 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]

execute if entity @s[tag=y] run particle minecraft:bubble ~0.0 ~-0.5 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=y] run particle minecraft:bubble ~0.0 ~-0.25 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=y] run particle minecraft:bubble ~0.0 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=y] run particle minecraft:bubble ~0.0 ~0.25 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=y] run particle minecraft:bubble ~0.0 ~0.5 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]

execute if entity @s[tag=z] run particle minecraft:bubble ~0.0 ~0.0 ~-0.5 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=z] run particle minecraft:bubble ~0.0 ~0.0 ~-0.25 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=z] run particle minecraft:bubble ~0.0 ~0.0 ~0.0 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=z] run particle minecraft:bubble ~0.0 ~0.0 ~0.25 0.001 0.001 0.001 1 1 force @a[tag=player]
execute if entity @s[tag=z] run particle minecraft:bubble ~0.0 ~0.0 ~0.5 0.001 0.001 0.001 1 1 force @a[tag=player]

execute if entity @e[type=marker, distance=..0.1]