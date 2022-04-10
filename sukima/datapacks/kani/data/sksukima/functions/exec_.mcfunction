execute store success storage minecraft:sukyakura Sukima_.Success byte 1 if data storage minecraft:sukyakura Sukima_.Settings[-1].ItemName run data modify storage minecraft:sukyakura Sukima_.Settings[-1].ItemName set from storage minecraft:sukyakura Sukima_.ItemName
execute if data storage minecraft:sukyakura {Sukima_:{Success:false}} positioned ~-15.5 ~-15.5 ~-15.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function sksukima:x
execute if data storage minecraft:sukyakura {Sukima_:{Success:true}} run data remove storage minecraft:sukyakura Sukima_.Settings[-1]
execute if data storage minecraft:sukyakura Sukima_.Settings[-1] run function sksukima:exec_
