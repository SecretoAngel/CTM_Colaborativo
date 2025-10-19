

title @s actionbar {"text":"§a§l||||||||||||||||||||||||||||||||||||||||"}
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuborojo:1}}}}] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 1 0.5 0 1000 normal
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuboamarillo:1}}}}] run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 1 0.5 0 1000 normal
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tcrcuboverde:1}}}}] run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 1 0.5 0 1000 normal
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 10 2
scoreboard players reset @s 1_equilibrio

clear @s firework_star[custom_data={tcrcubo:1,tcrcuborojo:1}]

execute if score @s 1_slot matches 0 run item replace entity @s hotbar.0 with bucket
execute if score @s 1_slot matches 1 run item replace entity @s hotbar.1 with bucket
execute if score @s 1_slot matches 2 run item replace entity @s hotbar.2 with bucket
execute if score @s 1_slot matches 3 run item replace entity @s hotbar.3 with bucket
execute if score @s 1_slot matches 4 run item replace entity @s hotbar.4 with bucket
execute if score @s 1_slot matches 5 run item replace entity @s hotbar.5 with bucket
execute if score @s 1_slot matches 6 run item replace entity @s hotbar.6 with bucket
execute if score @s 1_slot matches 7 run item replace entity @s hotbar.7 with bucket
execute if score @s 1_slot matches 8 run item replace entity @s hotbar.8 with bucket

scoreboard players reset @s 1_slot

