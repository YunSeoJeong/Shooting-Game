#cooltime
scoreboard players add @a cooltime_shooter 1

#active
execute as @a[nbt={Inventory:[{id:"minecraft:spyglass",Count:1b,Slot:-106b}]}] run execute if score @s cooltime_shooter >= cooltime_shooter_set cooltime_shooter run tag @s add shooter
item replace entity @a[tag=shooter] weapon.mainhand with minecraft:spyglass
item replace entity @a[tag=shooter] weapon.offhand with minecraft:air

#start
execute if entity @a[tag=shooter] run function bass:shooting_s_d_r

#effect


#sory
execute as @a[tag=shooter] at @s run playsound minecraft:entity.zombie.attack_iron_door voice @s ~ ~ ~ 1 2 0

#reset
scoreboard players set @a[tag=shooter] storage -1
scoreboard players set @a[tag=shooter] cooltime_shooter 0
tag @a[tag=shooter] remove shooter
