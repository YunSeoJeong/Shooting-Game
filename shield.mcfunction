execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"big_shield","color":"dark_blue","bold":true,"italic":true}',Lore:['{"text":"let\'s go"}']}}}},scores={carrot=1..}] run tag @s add shield_used
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"big_shield","color":"dark_blue","bold":true,"italic":true}',Lore:['{"text":"let\'s go"}']}}}}] run tag @s remove shield_used
execute as @a[tag=shield_used] at @s run summon giant ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["shield_giant"],HandItems:[{id:"minecraft:shield",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:shield",Count:1b},{id:"minecraft:shield",Count:1b},{id:"minecraft:shield",Count:1b},{id:"minecraft:shield",Count:1b}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:99999}]}
execute as @a[tag=shield_used] at @s anchored eyes run tp @e[tag=shield_giant] ~ ~-6 ~ ~ ~
execute as @e[tag=shield_giant] run tag @s add old_shield_giant
execute as @e[tag=shield_giant] run tag @s remove shield_giant
execute unless entity @a[tag=shield_player] run kill @e[tag=old_shield_giant]
execute as @a[tag=shield_used] run scoreboard players set @s carrot 0
execute as @a[tag=shield_used] run tag @s remove shield_used
execute as @e[tag=old_shield_giant] run scoreboard players add @s shield_giant_time 1
execute as @e[tag=old_shield_giant,scores={shield_giant_time=60..}] run kill @s