#CALLED BY MENU [SELECT PROFESSION]

$tellraw @s [{"text":"\n"},{"text":"════════════════\n","color":"gray"},{"text":"Select a villager profession \n","color":"green","bold":true},{"text":"[Armorer]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value armorer"}},{"text":"  ◦  "},{"text":"[Butcher]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value butcher"}},{"text":"[Cartographer]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value cartographer"}},{"text":"[Cleric]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value cleric"}},{"text":"  ◦  "},{"text":"[Farmer]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value farmer"}},{"text":"[Fisherman]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value fisherman"}},{"text":"  ◦  "},{"text":"[Fletcher]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value fletcher"}},{"text":"[Leatherworker]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value leatherworker"}},{"text":"[Librarian]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value librarian"}},{"text":"  ◦  "},{"text":"[Mason]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value mason"}},{"text":"[Shepherd]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value shepherd"}},{"text":"  ◦  "},{"text":"[Toolsmith]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value toolsmith"}},{"text":"[Weaponsmith]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run data modify storage villager:creator villager.$(id).VillagerData.profession set value weaponsmith"}},{"text":"\n\n[RETURN TO MENU]\n","color":"blue","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run function vg.xtabay:villagers/pmenu/menu {id:$(id)}"}},{"text":"[APPLY CHANGES]\n","color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run function vg.xtabay:villagers/pmenu/apply_changes {id:$(id)}"}},{"text":"\n[EXIT EDITING MODE]\n","color":"red","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=properties.menu] run function vg.xtabay:villagers/pmenu/stop_editing {id:$(id)}"}},{"text":"════════════════","color":"gray"}]