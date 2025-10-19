# Mecanica equilibrio
execute as @a[scores={1_equilibrio=0..}] run function taller_cromatico:equilibrio/run

execute as @e[tag=1_fuente,nbt={interaction:{}}] on target unless entity @s[scores={1_equilibrio=0..}] run function taller_cromatico:equilibrio/ini
execute as @e[tag=1_lienzo,nbt={interaction:{}}] on target if entity @s[scores={1_equilibrio=0..}] run function taller_cromatico:equilibrio/llevar_pintura

execute as @e[nbt={interaction:{}}] run data remove entity @s interaction

# Anti cheese system
execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_data":{tcrcubo:1}}}}] run data merge entity @s {Item:{count:1,id:"minecraft:bucket"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:bucket",count:1,components:{"minecraft:custom_data":{tcrcubo:1}}}}] run data remove entity @s Item.components
