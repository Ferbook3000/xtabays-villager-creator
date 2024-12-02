#CALLED BY MENU [APPLY CHANGES]

#MODIFY STORAGE BEFORE APPLYING CHANGES
##########################################
#GET RAWNAME
$data modify storage villager:creator villager.$(id).rawname set string storage villager:creator villager.$(id).Inventory[{id:"minecraft:writable_book",components:{"minecraft:custom_data":{"change.name":true}}}].components.minecraft:writable_book_content.pages[0].raw

#CREATE EMPTY *RAWNAME
$execute unless data storage villager:creator villager.$(id).rawname run data modify storage villager:creator villager.$(id).rawname set value "vg.empty"

#ORDERNAR NOMBRE EN FORMATO RAWJSON
$execute unless data storage villager:creator villager.$(id){rawname:"vg.empty"} run function vg.xtabay:villagers/pmenu/apply_change_name with storage villager:creator villager.$(id)

#GUARDAR NOMBRE EN STORAGE
$execute unless data storage villager:creator villager.$(id){rawname:"vg.empty"} run data modify storage villager:creator villager.$(id).CustomName set from storage villager:creator villager.CustomName
##########################################

#EJECUTAR EN CASO DE NO ENCONTRAR ALDEANO
$execute unless entity @e[type=villager,tag=villager.creator,scores={vg.player.id=$(id)}] run function vg.xtabay:villagers/pmenu/failed_to_apply_changes {id:$(id)}

#APLICAR CAMBIOS
$execute as @e[type=villager,tag=villager.creator,scores={vg.player.id=$(id)}] run function vg.xtabay:villagers/pmenu/apply_changes_macro {id:$(id)}

#ANUNCIAR COMANDOS
execute if data storage villager:creator {silentmode:true} unless entity @e[type=minecraft:armor_stand,tag=currently.editing] run gamerule sendCommandFeedback true

#REMOVER TAG EDITANDO ALDEANO
tag @s remove properties.menu

#SONIDO EXITOSO
playsound minecraft:block.note_block.chime neutral @s ~ ~ ~ 1 1 1

#TELLRAW APPLIED CHANGES


#say apply changes