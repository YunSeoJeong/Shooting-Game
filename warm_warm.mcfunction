execute as @e[tag=head_monster] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:400f,Tags:["tail_zom"],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",Count:1b},{}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:400}]}
scoreboard players add @e[tag=tail_zom] summon_time 1
execute as @e[tag=tail_zom,scores={summon_time=60..}] at @s run kill @s


