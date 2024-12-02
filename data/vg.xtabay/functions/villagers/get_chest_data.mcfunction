#CALLED BY FIND_CHEST AND ADD_TRADE

#COPIAR CHEST A STORAGE	
data modify storage villager:creator chest.rawdata set from block ~ ~ ~ {}

#OBTENER NOMBRE
data modify storage villager:creator chest.name set from storage villager:creator chest.rawdata.CustomName

#------ TRADEO 1 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem1 set from storage villager:creator chest.rawdata.Items[{Slot:0b}].id
data modify storage villager:creator chest.buycount1 set from storage villager:creator chest.rawdata.Items[{Slot:0b}].count
data modify storage villager:creator chest.buycomponents1 set from storage villager:creator chest.rawdata.Items[{Slot:0b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem1 set from storage villager:creator chest.rawdata.Items[{Slot:1b}].id
data modify storage villager:creator chest.buybcount1 set from storage villager:creator chest.rawdata.Items[{Slot:1b}].count
data modify storage villager:creator chest.buybcomponents1 set from storage villager:creator chest.rawdata.Items[{Slot:1b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem1 set from storage villager:creator chest.rawdata.Items[{Slot:2b}].id
data modify storage villager:creator chest.sellcount1 set from storage villager:creator chest.rawdata.Items[{Slot:2b}].count
data modify storage villager:creator chest.sellcomponents1 set from storage villager:creator chest.rawdata.Items[{Slot:2b}].components

#------ TRADEO 2 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem2 set from storage villager:creator chest.rawdata.Items[{Slot:3b}].id
data modify storage villager:creator chest.buycount2 set from storage villager:creator chest.rawdata.Items[{Slot:3b}].count
data modify storage villager:creator chest.buycomponents2 set from storage villager:creator chest.rawdata.Items[{Slot:3b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem2 set from storage villager:creator chest.rawdata.Items[{Slot:4b}].id
data modify storage villager:creator chest.buybcount2 set from storage villager:creator chest.rawdata.Items[{Slot:4b}].count
data modify storage villager:creator chest.buybcomponents2 set from storage villager:creator chest.rawdata.Items[{Slot:4b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem2 set from storage villager:creator chest.rawdata.Items[{Slot:5b}].id
data modify storage villager:creator chest.sellcount2 set from storage villager:creator chest.rawdata.Items[{Slot:5b}].count
data modify storage villager:creator chest.sellcomponents2 set from storage villager:creator chest.rawdata.Items[{Slot:5b}].components

#------ TRADEO 3 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem3 set from storage villager:creator chest.rawdata.Items[{Slot:6b}].id
data modify storage villager:creator chest.buycount3 set from storage villager:creator chest.rawdata.Items[{Slot:6b}].count
data modify storage villager:creator chest.buycomponents3 set from storage villager:creator chest.rawdata.Items[{Slot:6b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem3 set from storage villager:creator chest.rawdata.Items[{Slot:7b}].id
data modify storage villager:creator chest.buybcount3 set from storage villager:creator chest.rawdata.Items[{Slot:7b}].count
data modify storage villager:creator chest.buybcomponents3 set from storage villager:creator chest.rawdata.Items[{Slot:7b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem3 set from storage villager:creator chest.rawdata.Items[{Slot:8b}].id
data modify storage villager:creator chest.sellcount3 set from storage villager:creator chest.rawdata.Items[{Slot:8b}].count
data modify storage villager:creator chest.sellcomponents3 set from storage villager:creator chest.rawdata.Items[{Slot:8b}].components

#------ TRADEO 4 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem4 set from storage villager:creator chest.rawdata.Items[{Slot:9b}].id
data modify storage villager:creator chest.buycount4 set from storage villager:creator chest.rawdata.Items[{Slot:9b}].count
data modify storage villager:creator chest.buycomponents4 set from storage villager:creator chest.rawdata.Items[{Slot:9b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem4 set from storage villager:creator chest.rawdata.Items[{Slot:10b}].id
data modify storage villager:creator chest.buybcount4 set from storage villager:creator chest.rawdata.Items[{Slot:10b}].count
data modify storage villager:creator chest.buybcomponents4 set from storage villager:creator chest.rawdata.Items[{Slot:10b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem4 set from storage villager:creator chest.rawdata.Items[{Slot:11b}].id
data modify storage villager:creator chest.sellcount4 set from storage villager:creator chest.rawdata.Items[{Slot:11b}].count
data modify storage villager:creator chest.sellcomponents4 set from storage villager:creator chest.rawdata.Items[{Slot:11b}].components

#------ TRADEO 5 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem5 set from storage villager:creator chest.rawdata.Items[{Slot:12b}].id
data modify storage villager:creator chest.buycount5 set from storage villager:creator chest.rawdata.Items[{Slot:12b}].count
data modify storage villager:creator chest.buycomponents5 set from storage villager:creator chest.rawdata.Items[{Slot:12b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem5 set from storage villager:creator chest.rawdata.Items[{Slot:13b}].id
data modify storage villager:creator chest.buybcount5 set from storage villager:creator chest.rawdata.Items[{Slot:13b}].count
data modify storage villager:creator chest.buybcomponents5 set from storage villager:creator chest.rawdata.Items[{Slot:13b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem5 set from storage villager:creator chest.rawdata.Items[{Slot:14b}].id
data modify storage villager:creator chest.sellcount5 set from storage villager:creator chest.rawdata.Items[{Slot:14b}].count
data modify storage villager:creator chest.sellcomponents5 set from storage villager:creator chest.rawdata.Items[{Slot:14b}].components

#------ TRADEO 6 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem6 set from storage villager:creator chest.rawdata.Items[{Slot:15b}].id
data modify storage villager:creator chest.buycount6 set from storage villager:creator chest.rawdata.Items[{Slot:15b}].count
data modify storage villager:creator chest.buycomponents6 set from storage villager:creator chest.rawdata.Items[{Slot:15b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem6 set from storage villager:creator chest.rawdata.Items[{Slot:16b}].id
data modify storage villager:creator chest.buybcount6 set from storage villager:creator chest.rawdata.Items[{Slot:16b}].count
data modify storage villager:creator chest.buybcomponents6 set from storage villager:creator chest.rawdata.Items[{Slot:16b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem6 set from storage villager:creator chest.rawdata.Items[{Slot:17b}].id
data modify storage villager:creator chest.sellcount6 set from storage villager:creator chest.rawdata.Items[{Slot:17b}].count
data modify storage villager:creator chest.sellcomponents6 set from storage villager:creator chest.rawdata.Items[{Slot:17b}].components

#------ TRADEO 7 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem7 set from storage villager:creator chest.rawdata.Items[{Slot:18b}].id
data modify storage villager:creator chest.buycount7 set from storage villager:creator chest.rawdata.Items[{Slot:18b}].count
data modify storage villager:creator chest.buycomponents7 set from storage villager:creator chest.rawdata.Items[{Slot:18b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem7 set from storage villager:creator chest.rawdata.Items[{Slot:19b}].id
data modify storage villager:creator chest.buybcount7 set from storage villager:creator chest.rawdata.Items[{Slot:19b}].count
data modify storage villager:creator chest.buybcomponents7 set from storage villager:creator chest.rawdata.Items[{Slot:19b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem7 set from storage villager:creator chest.rawdata.Items[{Slot:20b}].id
data modify storage villager:creator chest.sellcount7 set from storage villager:creator chest.rawdata.Items[{Slot:20b}].count
data modify storage villager:creator chest.sellcomponents7 set from storage villager:creator chest.rawdata.Items[{Slot:20b}].components

#------ TRADEO 8 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem8 set from storage villager:creator chest.rawdata.Items[{Slot:21b}].id
data modify storage villager:creator chest.buycount8 set from storage villager:creator chest.rawdata.Items[{Slot:21b}].count
data modify storage villager:creator chest.buycomponents8 set from storage villager:creator chest.rawdata.Items[{Slot:21b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem8 set from storage villager:creator chest.rawdata.Items[{Slot:22b}].id
data modify storage villager:creator chest.buybcount8 set from storage villager:creator chest.rawdata.Items[{Slot:22b}].count
data modify storage villager:creator chest.buybcomponents8 set from storage villager:creator chest.rawdata.Items[{Slot:22b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem8 set from storage villager:creator chest.rawdata.Items[{Slot:23b}].id
data modify storage villager:creator chest.sellcount8 set from storage villager:creator chest.rawdata.Items[{Slot:23b}].count
data modify storage villager:creator chest.sellcomponents8 set from storage villager:creator chest.rawdata.Items[{Slot:23b}].components

#------ TRADEO 9 ------
#Obtener objeto de compra A
data modify storage villager:creator chest.buyitem9 set from storage villager:creator chest.rawdata.Items[{Slot:24b}].id
data modify storage villager:creator chest.buycount9 set from storage villager:creator chest.rawdata.Items[{Slot:24b}].count
data modify storage villager:creator chest.buycomponents9 set from storage villager:creator chest.rawdata.Items[{Slot:24b}].components

#Obtener objeto de compra B
data modify storage villager:creator chest.buybitem9 set from storage villager:creator chest.rawdata.Items[{Slot:25b}].id
data modify storage villager:creator chest.buybcount9 set from storage villager:creator chest.rawdata.Items[{Slot:25b}].count
data modify storage villager:creator chest.buybcomponents9 set from storage villager:creator chest.rawdata.Items[{Slot:25b}].components

#Obtener objeto en venta
data modify storage villager:creator chest.sellitem9 set from storage villager:creator chest.rawdata.Items[{Slot:26b}].id
data modify storage villager:creator chest.sellcount9 set from storage villager:creator chest.rawdata.Items[{Slot:26b}].count
data modify storage villager:creator chest.sellcomponents9 set from storage villager:creator chest.rawdata.Items[{Slot:26b}].components

#say getchestdata