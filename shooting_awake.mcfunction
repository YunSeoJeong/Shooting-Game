kill @e[type=minecraft:marker]

summon minecraft:marker ~ ~ ~ {Tags:["m1"],Invulnerable:1}
summon minecraft:marker ~ ~ ~ {Tags:["m2"],Invulnerable:1}

tag @a remove p1
tag @a remove p2


tag @r add p1
tag @r[tag=!p1] add p2

scoreboard objectives add storage dummy

scoreboard players set @a storage 1


scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

scoreboard objectives add px dummy
scoreboard objectives add py dummy
scoreboard objectives add pz dummy

scoreboard objectives add sx dummy
scoreboard objectives add sy dummy
scoreboard objectives add sz dummy

scoreboard objectives add cooltime_shooter dummy
scoreboard players set cooltime_shooter_set cooltime_shooter 40

forceload add -1 -1 1 1