#cooltime
scoreboard players add @a cooltime_spyglass 1

#active
execute as @a[nbt={Inventory:[{id:"minecraft:spyglass",Count:1b,Slot:-106b}]}] run execute if score @s cooltime_spyglass >= cooltime_spyglass_set cooltime_spyglass run tag @s add spyglass
item replace entity @a[tag=spyglass] weapon.mainhand with minecraft:spyglass
item replace entity @a[tag=spyglass] weapon.offhand with minecraft:air

#summon bullet
execute as @a[tag=spyglass] at @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:5,NoGravity:1,Tags:["spyBullet","new"]}
execute as @a[tag=spyglass] at @s run tp @e[type=minecraft:area_effect_cloud,tag=new] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=new,tag=spyBullet] loop = loop_set loop
tag @e[type=minecraft:area_effect_cloud,tag=new] remove new

#start loop
execute as @e[type=minecraft:area_effect_cloud,tag=spyBullet,tag=!new] at @s run function bass:loop_spyglass

#sory
execute as @a[tag=spyglass] at @s run playsound minecraft:entity.zombie.attack_iron_door voice @s ~ ~ ~ 1 2 0

#reset
scoreboard players set @a[tag=spyglass] cooltime_spyglass 0
tag @a[tag=spyglass] remove spyglass
