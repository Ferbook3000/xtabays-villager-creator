#CALLED BY CHANGE_NAME_MENU [SAVE NAME]

#COPIAR LIBRO A INVENTORY STORAGE
$execute if data entity @s Inventory[{id:"minecraft:writable_book",components:{"minecraft:custom_data":{"change.name":true}}}].components.minecraft:writable_book_content.pages run data modify storage villager:creator villager.$(id).Inventory[] set from entity @s Inventory[{id:"minecraft:writable_book",components:{"minecraft:custom_data":{"change.name":true}}}]

#BORRAR LIBRO
clear @s *[custom_data={"change.name":true}]