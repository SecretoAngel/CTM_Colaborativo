execute as @a[scores={1_equilibrio=1..}] unless predicate taller_cromatico:sprint run scoreboard players add @s 1_tallercromatico 1
execute as @a[scores={1_equilibrio=1..,1_mover=0}] unless predicate taller_cromatico:sprint run scoreboard players add @s 1_tallercromatico 2
execute as @a[scores={1_tallercromatico=20..}] run scoreboard players remove @s 1_equilibrio 1
execute as @a[scores={1_tallercromatico=20..}] run scoreboard players set @s 1_mover 0
execute as @a[scores={1_tallercromatico=20..}] run scoreboard players set @s 1_tallercromatico 0

function taller_cromatico:equilibrio/indicador

execute at @a[scores={1_equilibrio=0..},nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuborojo:1}}}}] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 1 normal
execute at @a[scores={1_equilibrio=0..},nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuboamarillo:1}}}}] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 1 normal
execute at @a[scores={1_equilibrio=0..},nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuboverde:1}}}}] run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 1 normal

execute if score @s 1_correr matches 100.. run scoreboard players add @s 1_equilibrio 1
execute if score @s 1_correr matches 100.. run scoreboard players set @s 1_correr 0
execute if score @s 1_saltar matches 1.. run scoreboard players add @s 1_equilibrio 20
execute if score @s 1_saltar matches 1.. run scoreboard players set @s 1_saltar 0
execute if score @s 1_recibedano matches 1.. run scoreboard players add @s 1_equilibrio 20
execute if score @s 1_recibedano matches 1.. run scoreboard players set @s 1_recibedano 0

execute if score @s 1_equilibrio matches 40.. run function taller_cromatico:equilibrio/end
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_data":{tcrcubo:1}}}}] run function taller_cromatico:equilibrio/end

