kill @e[type=minecraft:marker]
summon minecraft:marker ~ ~ ~ {Tags:["m1"],Invulnerable:1}
summon minecraft:marker ~ ~ ~ {Tags:["m2"],Invulnerable:1}
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
forceload add -1 -1 1 1