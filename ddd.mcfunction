execute as @a[tag=p1] at @s anchored eyes positioned .0 .0 .0 run tp @e[type=minecraft:marker,tag=m1] ^ ^ ^1
execute as @a[tag=p2] at @s anchored eyes positioned .0 .0 .0 run tp @e[type=minecraft:marker,tag=m2] ^ ^ ^1
execute store result score @a[tag=p1,limit=1] dx run data get entity @e[tag=m1,limit=1] Pos[0] 100
execute store result score @a[tag=p1,limit=1] dy run data get entity @e[tag=m1,limit=1] Pos[1] 100
execute store result score @a[tag=p1,limit=1] dz run data get entity @e[tag=m1,limit=1] Pos[2] 100
execute store result score @a[tag=p2,limit=1] dx run data get entity @e[tag=m2,limit=1] Pos[0] 100
execute store result score @a[tag=p2,limit=1] dy run data get entity @e[tag=m2,limit=1] Pos[1] 100
execute store result score @a[tag=p2,limit=1] dz run data get entity @e[tag=m2,limit=1] Pos[2] 100