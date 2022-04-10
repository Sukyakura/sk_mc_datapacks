data modify storage minecraft:sukyakura Sukima_.ItemName set from storage minecraft:sukyakura Sukima_.Setting.ItemName
execute store success storage minecraft:sukyakura Sukima_.DifferentItemName byte 1 run data modify storage minecraft:sukyakura Sukima_.ItemName set from storage minecraft:sukyakura Sukima_.Settings[0].ItemName
execute if data storage minecraft:sukyakura {Sukima_:{DifferentItemName:true}} run data modify storage minecraft:sukyakura Sukima.Settings append from storage minecraft:sukyakura Sukima_.Settings[0]
data remove storage minecraft:sukyakura Sukima_.Settings[0]
execute if data storage minecraft:sukyakura Sukima_.Settings[0] run function sksukima:sample/delete
