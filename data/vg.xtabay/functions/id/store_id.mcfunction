#CALLED BY ASSIGN_*_ID

#STORE ID AND UUID FOR RECOVERY
$execute unless data storage villager:creator ID.$(entity)[{id:$(id)}] run data modify storage villager:creator ID.$(entity) append value {id:$(id),UUID:$(UUID)}

#WARNING IN CASE ID SYSTEM IS CORRUPTED - [IN DEVELOPMENT]
#$execute if data storage villager:creator ID.$(entity)[{id:$(id)}] run tellraw @a[distance=..10] [{"text":""},{"text":"ID SYSTEM IS CORRUPTED. RUN RECOVERY PROCEDURE BEFORE PERFORMING ANY OTHER ACTION","color":"red","bold":true},{"text":"\n\n[CLICK HERE TO RUN RECOVERY PROCEDURE]","color":"green","clickEvent":{"action":"run_command","value":"/function vg.xtabay:id/recover_ids"}}]