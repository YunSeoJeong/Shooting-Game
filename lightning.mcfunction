execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"lightning_bolt","color":"dark_green","bold":true}'}}}},scores={lightning_cooltime=140..,carrot=1..}] run tag @s add lightning_bolt_used


execute as @a[tag=lightning_bolt_used] at @s positioned .0 0 .0 run summon minecraft:area_effect_cloud ^ ^ ^2 {Duration:1, Tags:["vector_lightning_bolt"]}
execute as @a[tag=lightning_bolt_used] at @s anchored eyes run summon minecraft:trident ^ ^ ^ {Tags:["new_lightning_bolt"],NoGravity:0b}
execute as @e[tag=new_lightning_bolt] run data modify entity @s Motion set from entity @e[tag=vector_lightning_bolt,limit=1] Pos
tag @e[tag=new_lightning_bolt] add lightning_trident
tag @e[tag=new_lightning_bolt] remove new_lightning_bolt
kill @e[tag=vector_lightning_bolt]

execute as @a[tag=lightning_bolt_used] run scoreboard players set @s lightning_cooltime 0
scoreboard players set @a[tag=lightning_bolt_used] carrot 0
tag @a[tag=lightning_bolt_used] remove lightning_bolt_used

execute as @e[type=minecraft:trident,tag=lightning_trident,nbt={inGround:1b}] at @s at @e[distance=..8] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=minecraft:trident,tag=lightning_trident,nbt={inGround:1b}] at @s at @e[distance=..8] run effect give @p minecraft:instant_damage 1 3
kill @e[type=minecraft:trident,tag=lightning_trident,nbt={inGround:1b}]

execute as @a[scores={lightning_cooltime=..139}] run scoreboard players add @s lightning_cooltime 1
