#CALLED BY ADVANCEMENT ADD_TRADE_STICK

function vg.xtabay:villagers/erase_chest_data
execute at @s anchored eyes run function vg.xtabay:villagers/add_trade
advancement revoke @s only vg.xtabay:add_trade_stick