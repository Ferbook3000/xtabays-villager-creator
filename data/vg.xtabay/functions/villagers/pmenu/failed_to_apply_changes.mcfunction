#CALLED BY FIND_VILLAGER

#MSG VILLAGER NOT FOUND
tellraw @s [{"text":"\n"},{"text":"Changes could not be applied: Villager not found\nVillager has been killed or is out of reach","color":"red"},{"text":"\nExited editing mode succesfully","color":"green"}]

#AUTOREMOVER TAG
tag @s remove properties.menu

#LIMPIAR DATOS
$data modify storage villager:creator villager.$(id) set value ""
$data modify storage villager:creator villager.$(id) set value {}

#BORRAR LIBRO
clear @s *[custom_data={"change.name":true}]