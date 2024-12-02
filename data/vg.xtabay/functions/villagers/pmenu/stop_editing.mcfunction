#CALLED BY MENU [EXIT EDITING MODE] AND STOP_EDITING_IF_FAR

#RESTAURAR ALDEANO
$execute as @e[type=villager,tag=villager.creator,scores={vg.player.id=$(id)}] run function vg.xtabay:villagers/pmenu/restore_villager {id:$(id)}

#KILL CURRENTLY EDITING IN CASE VILLAGER DIED
$execute unless entity @e[type=villager,tag=villager.creator,scores={vg.player.id=$(id)}] run kill @e[type=armor_stand,tag=currently.editing,tag=$(id)]

#EXITED EDITING MODE SUCCESFULLY
tellraw @s [{"text":""},{"text":"\nExited editing mode succesfully","color":"green"},{"text":"\nNo changes were applied to this villager"}]

#BORRAR DATOS
$data modify storage villager:creator villager.$(id) set value ""
$data modify storage villager:creator villager.$(id) set value {}

#ANUNCIAR COMANDOS
execute if data storage villager:creator {silentmode:true} unless entity @e[type=minecraft:armor_stand,tag=currently.editing] run gamerule sendCommandFeedback true

#BORRAR LIBRO
clear @s *[custom_data={"change.name":true}]

#AUTOREMOVER TAG
tag @s remove properties.menu