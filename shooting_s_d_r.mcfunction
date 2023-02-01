execute as @a[tag=p1] at @s anchored eyes positioned .0 .0 .0 run tp @e[type=minecraft:marker,tag=m1] ^ ^ ^1
execute as @a[tag=p2] at @s anchored eyes positioned .0 .0 .0 run tp @e[type=minecraft:marker,tag=m2] ^ ^ ^1
execute store result score @a[tag=p1,limit=1] dx run data get entity @e[tag=m1,limit=1] Pos[0] 100
execute store result score @a[tag=p1,limit=1] dy run data get entity @e[tag=m1,limit=1] Pos[1] 100
execute store result score @a[tag=p1,limit=1] dz run data get entity @e[tag=m1,limit=1] Pos[2] 100
execute store result score @a[tag=p2,limit=1] dx run data get entity @e[tag=m2,limit=1] Pos[0] 100
execute store result score @a[tag=p2,limit=1] dy run data get entity @e[tag=m2,limit=1] Pos[1] 100
execute store result score @a[tag=p2,limit=1] dz run data get entity @e[tag=m2,limit=1] Pos[2] 100

execute as @a run execute store result score @s px run data get entity @s Pos[0] 100
execute as @a run execute store result score @s py run data get entity @s Pos[1] 100
execute as @a run execute store result score @s pz run data get entity @s Pos[2] 100

scoreboard players add @a py 120

execute as @a[tag=p1,limit=1] run scoreboard players operation @s sx = @s px
execute as @a[tag=p1,limit=1] run scoreboard players operation @s sy = @s py
execute as @a[tag=p1,limit=1] run scoreboard players operation @s sz = @s pz

execute as @a[tag=p1,limit=1] run scoreboard players operation @s sx -= @a[tag=p2,limit=1] px
execute as @a[tag=p1,limit=1] run scoreboard players operation @s sy -= @a[tag=p2,limit=1] py
execute as @a[tag=p1,limit=1] run scoreboard players operation @s sz -= @a[tag=p2,limit=1] pz

execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage = @s sx
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage *= @s dx
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem2 storage = @s sy
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem2 storage *= @s dy
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem3 storage = @s sz
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem3 storage *= @s dz

execute as @a[tag=p1,tag=shooter] run scoreboard players operation @s storage = rem1 storage
execute as @a[tag=p1,tag=shooter] run scoreboard players operation @s storage += rem2 storage
execute as @a[tag=p1,tag=shooter] run scoreboard players operation @s storage += rem3 storage

execute as @a[tag=p1,tag=shooter] run scoreboard players operation @s storage *= @s storage

execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage = @s sx
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage *= rem1 storage
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem2 storage += @s sy
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem2 storage *= rem2 storage
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem3 storage += @s sz
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem3 storage *= rem3 storage

execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage += rem2 storage
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage += rem3 storage

execute as @a[tag=p1,tag=shooter] run scoreboard players operation @s storage -= rem1 storage

execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage = r storage
execute as @a[tag=p1,tag=shooter] run scoreboard players operation rem1 storage *= rem1 storage

execute as @a[tag=p1,tag=shooter] run scoreboard players operation @s storage += rem1 storage


#------------------


execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage = @a[tag=p1,limit=1] sx
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage *= @s dx
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem2 storage = @a[tag=p1,limit=1] sy
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem2 storage *= @s dy
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem3 storage = @a[tag=p1,limit=1] sz
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem3 storage *= @s dz

execute as @a[tag=p2,tag=shooter] run scoreboard players operation @s storage = rem1 storage
execute as @a[tag=p2,tag=shooter] run scoreboard players operation @s storage += rem2 storage
execute as @a[tag=p2,tag=shooter] run scoreboard players operation @s storage += rem3 storage

execute as @a[tag=p2,tag=shooter] run scoreboard players operation @s storage *= @s storage

execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage = @a[tag=p1,limit=1] sx
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage *= rem1 storage
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem2 storage += @a[tag=p1,limit=1] sy
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem2 storage *= rem2 storage
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem3 storage += @a[tag=p1,limit=1] sz
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem3 storage *= rem3 storage

execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage += rem2 storage
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage += rem3 storage

execute as @a[tag=p2,tag=shooter] run scoreboard players operation @s storage -= rem1 storage

execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage = r storage
execute as @a[tag=p2,tag=shooter] run scoreboard players operation rem1 storage *= rem1 storage

execute as @a[tag=p2,tag=shooter] run scoreboard players operation @s storage += rem1 storage



#------------

execute as @a[tag=p1,tag=shooter,limit=1,scores={storage=0..}] run effect give @a[tag=p2,limit=1] minecraft:instant_damage 1 1 true
execute as @a[tag=p2,tag=shooter,limit=1,scores={storage=0..}] run effect give @a[tag=p1,limit=1] minecraft:instant_damage 1 1 true


