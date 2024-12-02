#CALLED WHEN STARTING THE WORLD OR BY /RELOAD COMMAND

#STICK COOLDOWN SCORE
scoreboard objectives add stickCoolDown dummy

#FUNCTION SUCCESS SCORE
scoreboard objectives add vg.success dummy

#VILLAGER SCORE ID
#scoreboard objectives add vg.villager.id dummy
#PLAYER SCORE ID
scoreboard objectives add vg.player.id dummy

#CREATE STORAGE FOR ID RECOVERY
#execute unless data storage villager:creator ID.villager run data modify storage villager:creator ID.villager set value []
execute unless data storage villager:creator ID.player run data modify storage villager:creator ID.player set value []

#VILLAGER HEALTH
scoreboard objectives add vg.health dummy
scoreboard objectives add vg.health.real dummy
scoreboard players set !vg.2 vg.health.real 2