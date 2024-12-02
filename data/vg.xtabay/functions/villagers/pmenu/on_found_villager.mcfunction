#CALLED BY FOUND_VILLAGER

#ASIGNAR LA MISMA ID QUE LA DEL JUGADOR QUE ESTÁ EDITANDO
$scoreboard players set @s vg.player.id $(id)

#LIMPIAR DATOS

#GUARDAR DATA DE ALDEANO
$data modify storage villager:creator villager.$(id) set from entity @s {}

#ESTABLECER VALORES GUARDADOS DE NOMBRE
$data modify storage villager:creator villager.$(id).bold set value "false"
$data modify storage villager:creator villager.$(id).italic set value "false"
$data modify storage villager:creator villager.$(id).strikethrough set value "false"
$data modify storage villager:creator villager.$(id).underlined set value "false"
$data modify storage villager:creator villager.$(id).obfuscated set value "false"
$execute if entity @s[tag=vg.bold] run data modify storage villager:creator villager.$(id).bold set value "true"
$execute if entity @s[tag=vg.italic] run data modify storage villager:creator villager.$(id).italic set value "true"
$execute if entity @s[tag=vg.strikethrough] run data modify storage villager:creator villager.$(id).strikethrough set value "true"
$execute if entity @s[tag=vg.underlined] run data modify storage villager:creator villager.$(id).underline set value "true"
$execute if entity @s[tag=vg.obfuscated] run data modify storage villager:creator villager.$(id).obfuscated set value "true"

#ESTABLECER VALORES GUARDADOS DE COLOR
$data modify storage villager:creator villager.$(id).color set value white
$execute if entity @s[tag=vg.dark_red] run data modify storage villager:creator villager.$(id).color set value dark_red
$execute if entity @s[tag=vg.red] run data modify storage villager:creator villager.$(id).color set value red
$execute if entity @s[tag=vg.gold] run data modify storage villager:creator villager.$(id).color set value gold
$execute if entity @s[tag=vg.yellow] run data modify storage villager:creator villager.$(id).color set value yellow
$execute if entity @s[tag=vg.dark_green] run data modify storage villager:creator villager.$(id).color set value dark_green
$execute if entity @s[tag=vg.green] run data modify storage villager:creator villager.$(id).color set value green
$execute if entity @s[tag=vg.aqua] run data modify storage villager:creator villager.$(id).color set value aqua
$execute if entity @s[tag=vg.dark_aqua] run data modify storage villager:creator villager.$(id).color set value dark_aqua
$execute if entity @s[tag=vg.dark_blue] run data modify storage villager:creator villager.$(id).color set value dark_blue
$execute if entity @s[tag=vg.light_purple] run data modify storage villager:creator villager.$(id).color set value light_purple
$execute if entity @s[tag=vg.dark_purple] run data modify storage villager:creator villager.$(id).color set value dark_purple
$execute if entity @s[tag=vg.gray] run data modify storage villager:creator villager.$(id).color set value gray
$execute if entity @s[tag=vg.dark_gray] run data modify storage villager:creator villager.$(id).color set value dark_gray
$execute if entity @s[tag=vg.black] run data modify storage villager:creator villager.$(id).color set value black

#GUARDAR PROFESIÓN
$data modify storage villager:creator villager.$(id).oldprofession set from storage villager.creator villager.$(id).VillagerData.profession

#GUARDAR TIPO
$data modify storage villager:creator villager.$(id).oldtype set from storage villager.creator villager.$(id).VillagerData.type

#SUMMONEAR ARMOR STAND CON "CURRENTLY EDITING"
$execute at @s run summon armor_stand ~ ~1 ~ {Tags:["currently.editing","$(id)"],CustomName:'{"text":"CURRENTLY EDITING","color":"green","bold":true}',CustomNameVisible:true,NoGravity:true,Invulnerable:true,Attributes:[{Name:"generic.scale",Base:.05}],Invisible:true}
$execute at @s run ride @e[distance=..3,tag=currently.editing,tag=$(id),limit=1] mount @s

#say on found villager
execute run return 1

#/execute if data storage villager:creator "[I;-1663764488,-2074065219,-1390533232,41346494]".CustomName run say hola =/= /execute if data storage villager:creator "[I; -1663764488, -2074065219, -1390533232, 41346494]".CustomName run say hola