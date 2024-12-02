#CALLED BY APPLY_CHANGES_MACRO

#ORDERNAR NOMBRE EN FORMATO RAWJSON
$data modify storage villager:creator villager.CustomName set value '{"text":"$(rawname)","color":"$(color)","bold":$(bold),"italic":$(italic),"strikethrough":$(strikethrough),"underlined":$(underlined),"obfuscated":$(obfuscated)}'

#$tellraw @a {"text":"rawname:$(rawname) obfuscated:$(obfuscated)"}

#say changed name!