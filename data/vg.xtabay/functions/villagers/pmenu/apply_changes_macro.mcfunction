#CALLED BY APPLY_CHANGES

#APLICAR CAMBIOS GENERALES
$data modify entity @s {} merge from storage villager:creator villager.$(id)

#AÑADIR TAGS DE OPCIONES DEFAULT APLICABLES
$execute if data storage villager:creator villager.$(id){bold:"true"} run tag @s add vg.bold
$execute if data storage villager:creator villager.$(id){italic:"true"} run tag @s add vg.italic
$execute if data storage villager:creator villager.$(id){strikethrough:"true"} run tag @s add vg.strikethrough
$execute if data storage villager:creator villager.$(id){underlined:"true"} run tag @s add vg.underlined
$execute if data storage villager:creator villager.$(id){obfuscated:"true"} run tag @s add vg.obfuscated

#QUITAR TAGS DE OPCIONES DEFAULT YA NO APLICABLES
$execute if data storage villager:creator villager.$(id){bold:"false"} run tag @s remove vg.bold
$execute if data storage villager:creator villager.$(id){italic:"false"} run tag @s remove vg.italic
$execute if data storage villager:creator villager.$(id){strikethrough:"false"} run tag @s remove vg.strikethrough
$execute if data storage villager:creator villager.$(id){underlined:"false"} run tag @s remove vg.underlined
$execute if data storage villager:creator villager.$(id){obfuscated:"false"} run tag @s remove vg.obfuscated

#AÑADIR TAG DE COLOR ACTUAL
$execute if data storage villager:creator villager.$(id){color:"dark_red"} run tag @s add vg.dark_red
$execute if data storage villager:creator villager.$(id){color:"red"} run tag @s add vg.red
$execute if data storage villager:creator villager.$(id){color:"dark_red"} run tag @s add vg.dark_red
$execute if data storage villager:creator villager.$(id){color:"gold"} run tag @s add vg.gold
$execute if data storage villager:creator villager.$(id){color:"yellow"} run tag @s add vg.yellow
$execute if data storage villager:creator villager.$(id){color:"dark_green"} run tag @s add vg.dark_green
$execute if data storage villager:creator villager.$(id){color:"green"} run tag @s add vg.green
$execute if data storage villager:creator villager.$(id){color:"aqua"} run tag @s add vg.aqua
$execute if data storage villager:creator villager.$(id){color:"dark_aqua"} run tag @s add vg.dark_aqua
$execute if data storage villager:creator villager.$(id){color:"dark_blue"} run tag @s add vg.dark_blue
$execute if data storage villager:creator villager.$(id){color:"blue"} run tag @s add vg.blue
$execute if data storage villager:creator villager.$(id){color:"light_purple"} run tag @s add vg.light_purple
$execute if data storage villager:creator villager.$(id){color:"dark_purple"} run tag @s add vg.dark_purple
#$execute if data storage villager:creator villager.$(id){color:"white"} run tag @s add vg.white
$execute if data storage villager:creator villager.$(id){color:"gray"} run tag @s add vg.gray
$execute if data storage villager:creator villager.$(id){color:"dark_gray"} run tag @s add vg.dark_gray
$execute if data storage villager:creator villager.$(id){color:"black"} run tag @s add vg.black

#QUITAR TAG DE COLOR YA NO APLICABLE
$execute unless data storage villager:creator villager.$(id){color:"dark_red"} run tag @s remove vg.dark_red
$execute unless data storage villager:creator villager.$(id){color:"red"} run tag @s remove vg.red
$execute unless data storage villager:creator villager.$(id){color:"dark_red"} run tag @s remove vg.dark_red
$execute unless data storage villager:creator villager.$(id){color:"gold"} run tag @s remove vg.gold
$execute unless data storage villager:creator villager.$(id){color:"yellow"} run tag @s remove vg.yellow
$execute unless data storage villager:creator villager.$(id){color:"dark_green"} run tag @s remove vg.dark_green
$execute unless data storage villager:creator villager.$(id){color:"green"} run tag @s remove vg.green
$execute unless data storage villager:creator villager.$(id){color:"aqua"} run tag @s remove vg.aqua
$execute unless data storage villager:creator villager.$(id){color:"dark_aqua"} run tag @s remove vg.dark_aqua
$execute unless data storage villager:creator villager.$(id){color:"dark_blue"} run tag @s remove vg.dark_blue
$execute unless data storage villager:creator villager.$(id){color:"blue"} run tag @s remove vg.blue
$execute unless data storage villager:creator villager.$(id){color:"light_purple"} run tag @s remove vg.light_purple
$execute unless data storage villager:creator villager.$(id){color:"dark_purple"} run tag @s remove vg.dark_purple
#$execute unless data storage villager:creator villager.$(id){color:"white"} run tag @s remove vg.white
$execute unless data storage villager:creator villager.$(id){color:"gray"} run tag @s remove vg.gray
$execute unless data storage villager:creator villager.$(id){color:"dark_gray"} run tag @s remove vg.dark_gray
$execute unless data storage villager:creator villager.$(id){color:"black"} run tag @s remove vg.black

#ELIMINAR ARMOR STAND
$kill @e[type=armor_stand,tag=currently.editing,tag=$(id)]

#BORRAR DATOS
$data modify storage villager:creator villager.$(id) set value ""
$data modify storage villager:creator villager.$(id) set value {}

#REMOVER ID DEL JUGADOR
scoreboard players reset @s vg.player.id

#MSG APPLIED CHANGES
$tellraw @a[scores={vg.player.id=$(id)}] {"text":"Changes applied successfully","color":"green"}

#say applied changes!

#hola has the following entity data: {Brain: {memories: {}}, HurtByTimestamp: 14526, Attributes: [{Base: 0.0d, Name: "minecraft:generic.movement_speed"}, {Base: 1.0d, Name: "minecraft:generic.knockback_resistance"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [{Target: [I; -1663764488, -2074065219, -1390533232, 41346494], Type: "minor_negative", Value: 35}], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, FallDistance: 0.0f, DeathTime: 0s, Xp: 1, LastGossipDecay: 3883648L, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 0b, UUID: [I; -1450515784, -2054469523, -2024249127, -2021481254], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 11.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Offers:, Rotation: [308.2358f, -30.14844f], HandItems: [{}, {}], RestocksToday: 0, ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '{"text":"hola","color":"red"}', Pos: [-31.401605615154644d, -60.0d, -44.21040818609132d], Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:leatherworker", level: 99, type: "minecraft:snow"}, HurtTime: 0s, Inventory: [], CustomNameVisible: 1b}