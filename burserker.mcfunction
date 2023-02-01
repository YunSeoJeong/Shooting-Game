execute as @a[tag=!berserker_used] run scoreboard players set @s damage 0
execute as @a[tag=!berserker_used] run scoreboard players set @s tick 0
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"berserker","color":"dark_green","bold":true}'}}}},scores={burserker_cooltime=140..,carrot=1..}] run tag @s add berserker_used
scoreboard players set @a[tag=berserker_used] burserker_cooltime 0
scoreboard players set @a[tag=berserker_used] carrot 0

execute as @a[tag=berserker_used] run scoreboard players add @s tick 1
execute as @a[tag=berserker_used] if score @s tick matches 200.. run tag @s remove berserker_used
execute as @a[tag=berserker_used, scores={damage=0..}] run effect give @s minecraft:regeneration 1 0 true
execute as @a[tag=berserker_used, scores={damage=15..}] run effect give @s minecraft:regeneration 1 1 true
execute as @a[tag=berserker_used, scores={damage=30..}] run effect give @s minecraft:regeneration 1 3 true
execute as @a[tag=berserker_used, scores={damage=45..}] run effect give @s minecraft:regeneration 1 4 true
execute as @a[tag=berserker_used, scores={damage=60..}] run effect give @s minecraft:regeneration 1 5 true
execute as @a[tag=berserker_used] run effect give @s minecraft:speed 1 2 true
execute as @a[tag=berserker_used] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 1 1 1 100 normal

execute as @a[scores={burserker_cooltime=..140}] run scoreboard players add @s burserker_cooltime 1
