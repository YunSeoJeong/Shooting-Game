tp @s ^ ^ ^0.2

particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.00001 1 force @a

execute as @e[tag=player] at @e[type=minecraft:area_effect_cloud,tag=spyBullet,tag=!new] if entity @s[distance=..0.2] run effect give @s minecraft:instant_damage 1 0 true

execute unless block ~ ~ ~ air run scoreboard players set @s loop 0
execute as @e[type=minecraft:area_effect_cloud,tag=spyBullet,tag=!new] at @s if entity @e[distance=..0.2,tag=player] run scoreboard players set @s loop 0

scoreboard players remove @s loop 1
execute as @e[type=minecraft:area_effect_cloud,tag=spyBullet,tag=!new,scores={loop=0..}] at @s run function bass:loop_spyglass


