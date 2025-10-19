

title @s actionbar {"text":"§4§l||||||||||||||||||||||||||||||||||||||||"}
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuborojo:1}}}}] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 1 0.5 0 1000 normal
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuboverde:1}}}}] run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 1 0.5 0 1000 normal
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuboamarillo:1}}}}] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 1 0.5 0 1000 normal
execute at @s run playsound minecraft:angel.desbordar master @s ~ ~ ~ 100
scoreboard players reset @s 1_equilibrio

clear @s firework_star[custom_data={tcrcubo:1,tcrcuborojo:1}]

execute unless entity @e[type=item,nbt={Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_data":{tcrcubo:1}}}}] run function taller_cromatico:equilibrio/end_2

scoreboard players reset @s 1_slot

