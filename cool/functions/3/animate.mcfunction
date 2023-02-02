#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function cool:3/l1/l1_0
scoreboard players add $32671 cw_particleplot 1
execute if score $32671 cw_particleplot matches 25.. run scoreboard players set $32671 cw_particleplot 0