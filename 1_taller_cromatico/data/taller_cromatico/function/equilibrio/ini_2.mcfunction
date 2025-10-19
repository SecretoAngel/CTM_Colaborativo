execute if entity @e[tag=1_fuente_rojo,nbt={interaction:{}}] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 100 normal
execute if entity @e[tag=1_fuente_verde,nbt={interaction:{}}] at @s run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 100 normal
execute if entity @e[tag=1_fuente_amarillo,nbt={interaction:{}}] at @s run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 100 normal

scoreboard players set @s 1_saltar 0
scoreboard players set @s 1_correr 0
scoreboard players set @s 1_recibedano 0
scoreboard players set @s 1_equilibrio 0

execute if entity @e[tag=1_fuente_rojo,nbt={interaction:{}}] run item replace entity @s weapon.mainhand with firework_star[custom_name={"translate":"1.tallercromatico.cuborojo.nombre"},lore=[{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore1"},{"translate":"1.tallercromatico.cubo.lore2"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore3"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore4"},{"translate":"1.tallercromatico.cubo.lore5"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore6"},{"translate":"empty"},{"translate":"empty"},{"translate":"item.importante"}],item_model="angel:cuborojo",enchantment_glint_override=true,custom_data={tcrcubo:1,tcrcuborojo:1},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-10,operation:"add_value",slot:"mainhand",display:{type:"hidden"}}]] 1
execute if entity @e[tag=1_fuente_verde,nbt={interaction:{}}] run item replace entity @s weapon.mainhand with firework_star[custom_name={"translate":"1.tallercromatico.cuboverde.nombre"},lore=[{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore1"},{"translate":"1.tallercromatico.cubo.lore2"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore3"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore4"},{"translate":"1.tallercromatico.cubo.lore5"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore6"},{"translate":"empty"},{"translate":"empty"},{"translate":"item.importante"}],item_model="angel:cuboverde",enchantment_glint_override=true,custom_data={tcrcubo:1,tcrcuboverde:1},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-10,operation:"add_value",slot:"mainhand",display:{type:"hidden"}}]] 1
execute if entity @e[tag=1_fuente_amarillo,nbt={interaction:{}}] run item replace entity @s weapon.mainhand with firework_star[custom_name={"translate":"1.tallercromatico.cuboamarillo.nombre"},lore=[{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore1"},{"translate":"1.tallercromatico.cubo.lore2"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore3"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore4"},{"translate":"1.tallercromatico.cubo.lore5"},{"translate":"empty"},{"translate":"1.tallercromatico.cubo.lore6"},{"translate":"empty"},{"translate":"empty"},{"translate":"item.importante"}],item_model="angel:cuboamarillo",enchantment_glint_override=true,custom_data={tcrcubo:1,tcrcuboamarillo:1},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-10,operation:"add_value",slot:"mainhand",display:{type:"hidden"}}]] 1

execute at @s run playsound minecraft:item.bottle.fill master @s ~ ~ ~ 100 2

execute if entity @s[nbt={SelectedItemSlot:0}] run scoreboard players set @s 1_slot 0
execute if entity @s[nbt={SelectedItemSlot:1}] run scoreboard players set @s 1_slot 1
execute if entity @s[nbt={SelectedItemSlot:2}] run scoreboard players set @s 1_slot 2
execute if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s 1_slot 3
execute if entity @s[nbt={SelectedItemSlot:4}] run scoreboard players set @s 1_slot 4
execute if entity @s[nbt={SelectedItemSlot:5}] run scoreboard players set @s 1_slot 5
execute if entity @s[nbt={SelectedItemSlot:6}] run scoreboard players set @s 1_slot 6
execute if entity @s[nbt={SelectedItemSlot:7}] run scoreboard players set @s 1_slot 7
execute if entity @s[nbt={SelectedItemSlot:8}] run scoreboard players set @s 1_slot 8