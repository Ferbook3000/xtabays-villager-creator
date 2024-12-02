#CALLED BY CHANGE_NAME_MENU [SET NEW NAME]

#BORRAR LIBRO EXISTENTE
clear @s *[custom_data={"change.name":true}]

#DAR LIBRO VACÍO
give @s minecraft:writable_book[custom_data={"change.name":true}] 1