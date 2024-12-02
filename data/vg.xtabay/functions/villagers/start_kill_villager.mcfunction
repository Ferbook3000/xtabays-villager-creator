#CALLED BY ADVANCEMENT KILL_VILLAGER_STICK

#RAYCAST ALDEANO
execute unless score @s stickCoolDown matches 1..5 at @s anchored eyes run function vg.xtabay:villagers/kill_villager
#AÑADIR COOLDOWN
execute unless score @s stickCoolDown matches 1..5 run scoreboard players set @s stickCoolDown 5
#REMOVER ADVANCEMENT
advancement revoke @s only vg.xtabay:kill_villager_stick