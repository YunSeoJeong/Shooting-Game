execute as @a[scores={poison_cooltime=140..,carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"poison_bow","color":"dark_green","bold":true}',Lore:['{"text":"kill them off!!!"}']}}}}] run tag @s add poison_arrow_used
execute as @a[tag=poison_arrow_used] at @s positioned .0 0 .0 run summon minecraft:area_effect_cloud ^ ^ ^2 {Duration:1, Tags:["vector_poison"]}
execute as @a[tag=poison_arrow_used] at @s anchored eyes run summon minecraft:arrow ^ ^ ^ {Tags:["new_poison"],NoGravity:0b}
execute as @e[tag=new_poison] run data modify entity @s Motion set from entity @e[tag=vector_poison,limit=1] Pos
tag @e[tag=new_poison] add poison_arrow
tag @e[tag=new_poison] remove new_poison 
kill @e[tag=vector_poison]
scoreboard players reset @a[tag=poison_arrow_used] carrot
execute as @a[tag=poison_arrow_used] run scoreboard players set @s poison_cooltime 0
execute as @a[tag=poison_arrow_used] run tag @s remove poison_arrow_used
execute as @e[type=minecraft:arrow,tag=poison_arrow,nbt={inGround:1b}] run scoreboard players add @s arrow_inground_time 1
execute as @e[type=minecraft:arrow,tag=poison_arrow,scores={arrow_inground_time=130..}] run kill @s
execute as @e[tag=poison_arrow,scores={arrow_inground_time=1..}] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 3 3 0.000001 5 force @a
execute as @e[tag=poison_arrow,scores={arrow_inground_time=1..}] at @s run effect give @a[distance=..8] minecraft:poison 10 1 false
execute as @a[scores={poison_cooltime=..139}] run scoreboard players add @s poison_cooltime 1

