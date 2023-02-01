#뚫린 벽 생성(replace air 붙이기!)
execute as @e[tag=cursor] at @s run clone 95 -60 -76 93 -58 -78 ~-1 ~-1 ~-1 filtered glass

#앞뒤좌우 각각에 대해서 레드스톤이 없다면 -앞뒤좌우 각각에 대해서 에메랄드가 없다면-(execute if 두번 쓰기)-옆 조건을 모두 통과한 방향의 아머스탠드에 '랜덤' 태그 추가
execute as @e[tag=cursor] at @s run execute unless block ~2 ~ ~ minecraft:redstone_block run execute unless block ~2 ~ ~ minecraft:emerald_block run tag @e[tag=+x] add random1
execute as @e[tag=cursor] at @s run execute unless block ~-2 ~ ~ minecraft:redstone_block run execute unless block ~-2 ~ ~ minecraft:emerald_block run tag @e[tag=-x] add random1
execute as @e[tag=cursor] at @s run execute unless block ~ ~ ~2 minecraft:redstone_block run execute unless block ~ ~ ~2 minecraft:emerald_block run tag @e[tag=+z] add random1
execute as @e[tag=cursor] at @s run execute unless block ~ ~ ~-2 minecraft:redstone_block run execute unless block ~ ~ ~-2 minecraft:emerald_block run tag @e[tag=-z] add random1
execute as @e[tag=cursor] at @s run execute unless block ~ ~2 ~ minecraft:redstone_block run execute unless block ~ ~2 ~ minecraft:emerald_block run tag @e[tag=+y] add random1
execute as @e[tag=cursor] at @s run execute unless block ~ ~-2 ~ minecraft:redstone_block run execute unless block ~ ~-2 ~ minecraft:emerald_block run tag @e[tag=-y] add random1

#----------------------------------------------------------------------------------------------------------------------------------------------------

#-만약 태그가 추가된 아머스탠드가 존재하지 않는다면 지금 위치 아래를 에메랄드로 바꾼 후
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~ minecraft:emerald_block

#앞뒤좌우 각각에 대해 벽이 존재하지 않는지를 탐색한 후에-앞뒤좌우 각각에 대해 그 아래가 에메랄드가 아니라면- 옆 조건을 만족하는 방향의 아머스탠드에 랜덤태그 추가
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run execute if block ~ ~ ~1 air run execute unless block ~ ~ ~2 minecraft:emerald_block run tag @e[tag=+z] add random2
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run execute if block ~ ~ ~-1 air run execute unless block ~ ~ ~-2 minecraft:emerald_block run tag @e[tag=-z] add random2
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run execute if block ~1 ~ ~ air run execute unless block ~2 ~ ~ minecraft:emerald_block run tag @e[tag=+x] add random2
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run execute if block ~-1 ~ ~ air run execute unless block ~-2 ~ ~ minecraft:emerald_block run tag @e[tag=-x] add random2
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run execute if block ~ ~1 ~ air run execute unless block ~ ~2 ~ minecraft:emerald_block run tag @e[tag=+y] add random2
execute unless entity @e[tag=random1] run execute as @e[tag=cursor] at @s run execute if block ~ ~-1 ~ air run execute unless block ~ ~-2 ~ minecraft:emerald_block run tag @e[tag=-y] add random2

#>-만약 랜덤태그가 붙은 아머스탠드가 존재한다면 랜덤태그 붙은 아머스탠드 중 하나 선택 후 
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run tag @e[sort=random,tag=random2,limit=1] add selected

#그쪽 벽 삭제
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=+z] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~1 minecraft:air
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=-z] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~-1 minecraft:air
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=+x] run execute as @e[tag=cursor] at @s run setblock ~1 ~ ~ minecraft:air
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=-x] run execute as @e[tag=cursor] at @s run setblock ~-1 ~ ~ minecraft:air
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=+y] run execute as @e[tag=cursor] at @s run setblock ~ ~1 ~ minecraft:air
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=-y] run execute as @e[tag=cursor] at @s run setblock ~ ~-1 ~ minecraft:air


#그 방향으로 이동
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=+z] run execute as @e[tag=cursor] at @s run tp @e[tag=cursor] ~ ~ ~2 
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=-z] run execute as @e[tag=cursor] at @s run tp @e[tag=cursor] ~ ~ ~-2 
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=+x] run execute as @e[tag=cursor] at @s run tp @e[tag=cursor] ~2 ~ ~ 
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=-x] run execute as @e[tag=cursor] at @s run tp @e[tag=cursor] ~-2 ~ ~ 
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=+y] run execute as @e[tag=cursor] at @s run tp @e[tag=cursor] ~ ~2 ~ 
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected,tag=-y] run execute as @e[tag=cursor] at @s run tp @e[tag=cursor] ~ ~-2 ~ 

#태그지우기
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=selected] run tag @s remove selected
execute unless entity @e[tag=random1] run execute if entity @e[tag=random2] run execute as @e[tag=random2] run tag @s remove random2

#처음부터 알고리즘 실행 ㄱ        

#-------------------------------------------------------------------------------------------------------------------------------------------

#-만약 태그가 추가된 아머스탠드가 존재한다면 랜덤 태그가 붙은 아머스탠드 중에 하나 선택
execute if entity @e[tag=random1] run tag @e[sort=random,tag=random1,limit=1] add selected

#이동할 방향 돌 삭제
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=selected,tag=+z] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~1 minecraft:air
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=selected,tag=-z] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~-1 minecraft:air
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=selected,tag=+x] run execute as @e[tag=cursor] at @s run setblock ~1 ~ ~ minecraft:air
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=selected,tag=-x] run execute as @e[tag=cursor] at @s run setblock ~-1 ~ ~ minecraft:air
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=selected,tag=+y] run execute as @e[tag=cursor] at @s run setblock ~ ~1 ~ minecraft:air
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=selected,tag=-y] run execute as @e[tag=cursor] at @s run setblock ~ ~-1 ~ minecraft:air


#이동할 방향을 제외한, 랜덤태그가 붙은 아머스탠드 방향에 돌 설치(고로 에메랄드나 레드스톤이 있는 방향으로는 돌이 새로 안생긴다.)
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=!selected,tag=+z] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~1 glass
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=!selected,tag=-z] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~-1 glass
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=!selected,tag=+x] run execute as @e[tag=cursor] at @s run setblock ~1 ~ ~ glass
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=!selected,tag=-x] run execute as @e[tag=cursor] at @s run setblock ~-1 ~ ~ glass
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=!selected,tag=+y] run execute as @e[tag=cursor] at @s run setblock ~ ~1 ~ glass
execute if entity @e[tag=random1] run execute as @e[tag=random1,tag=!selected,tag=-y] run execute as @e[tag=cursor] at @s run setblock ~ ~-1 ~ glass


#이동할 방향으로 이동
execute if entity @e[tag=random1] run execute as @e[tag=selected,tag=+z] run execute as @e[tag=cursor] at @s run tp @s ~ ~ ~2
execute if entity @e[tag=random1] run execute as @e[tag=selected,tag=-z] run execute as @e[tag=cursor] at @s run tp @s ~ ~ ~-2
execute if entity @e[tag=random1] run execute as @e[tag=selected,tag=+x] run execute as @e[tag=cursor] at @s run tp @s ~2 ~ ~
execute if entity @e[tag=random1] run execute as @e[tag=selected,tag=-x] run execute as @e[tag=cursor] at @s run tp @s ~-2 ~ ~
execute if entity @e[tag=random1] run execute as @e[tag=selected,tag=+y] run execute as @e[tag=cursor] at @s run tp @s ~ ~2 ~
execute if entity @e[tag=random1] run execute as @e[tag=selected,tag=-y] run execute as @e[tag=cursor] at @s run tp @s ~ ~-2 ~

#cursor의 위치의 아래를 레드스톤으로 바꾸기
execute if entity @e[tag=random1] run execute as @e[tag=cursor] at @s run setblock ~ ~ ~ minecraft:redstone_block

#태그 지우기
execute if entity @e[tag=random1] run execute as @e[tag=selected] run tag @s remove selected
execute if entity @e[tag=random1] run execute as @e[tag=random1] run tag @s remove random1


#처음부터 알고리즘 실행 ㄱ











