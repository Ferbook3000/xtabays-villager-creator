#CALLED BY ADVANCEMENT VILLAGER_CREATOR_STICK

#CLEAR STORAGE'S CHEST DATA
function vg.xtabay:villagers/erase_chest_data

#RAYCAST UNTIL CHEST IS FOUND
execute at @s anchored eyes run function vg.xtabay:villagers/find_chest

#REVOKE ADVANCEMENT
advancement revoke @s only vg.xtabay:villager_creator_stick