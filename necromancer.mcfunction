execute as @a[scores={necro_cooltime=340..},nbt={Inventory:[{id:"minecraft:bone",tag:{display:{Name:'{"text":"Necromancer_wand","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"hihihi"}']}},Count:1b,Slot:-106b}]}] run tag @s add necromancer_player
execute as @a[tag=necromancer_player,scores={necromancer_summon_time=0}] run clear @s bone{display:{Name:'{"text":"Necromancer_wand","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"hihihi"}']}}
execute as @a[tag=necromancer_player,scores={necromancer_summon_time=0}] run give @s bone{display:{Name:'{"text":"Necromancer_wand","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"hihihi"}']}} 1

execute as @a[tag=necromancer_player,scores={necro_cooltime=340..}] at @s run summon armor_stand ~1 ~ ~1 {Tags:["necro_armor_stand"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:0b,NoBasePlate:1b,Health:20f,Tags:["necro_armor_stand"],Pose:{LeftArm:[-40f,60f,0f]},HandItems:[{id:"minecraft:netherite_axe",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:netherite_helmet",Count:1b}]}

execute as @a[scores={necro_cooltime=340..},tag=necromancer_player] run scoreboard players set @s necro_cooltime 0

execute as @e[tag=necro_armor_stand] at @s facing entity @a[tag=!necromancer_player,sort=nearest,limit=1] eyes run tp ^ ^ ^0.5
execute as @a[tag=necromancer_player,scores={necromancer_summon_time=60..}] run execute as @e[tag=necro_armor_stand] at @s run effect give @a[distance=..1.3] minecraft:instant_damage 1 1 false
execute as @e[tag=necro_armor_stand] at @s run particle minecraft:crit ^ ^ ^0.5 0.2 0.2 0.2 0.1 2 force @a
scoreboard players add @a[tag=necromancer_player,scores={necromancer_summon_time=..199}] necromancer_summon_time 1

execute as @a[tag=necromancer_player,scores={necromancer_summon_time=200..}] run kill @e[tag=necro_armor_stand]
execute as @a[tag=necromancer_player,scores={necromancer_summon_time=200..}] run tag @s remove necromancer_player
execute as @a[scores={necromancer_summon_time=200..}] run scoreboard players set @s necromancer_summon_time 0

execute as @a[scores={necro_cooltime=..339}] run scoreboard players add @s necro_cooltime 1

