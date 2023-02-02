summon marker ~ ~0.5 ~ {Tags:["prepare"]}
execute as @e[tag=prepare] at @s unless entity @e[tag=used, distance=..0.1] run function bass:map
kill