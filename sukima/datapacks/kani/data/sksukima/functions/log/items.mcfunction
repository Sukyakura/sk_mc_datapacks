data modify storage minecraft:sukyakura Sukima_.LogItems append value [["・"]]
data modify storage minecraft:sukyakura Sukima_.LogItems[-1] append value [""]
data modify storage minecraft:sukyakura Sukima_.LogItems[-1][-1][0] set from storage minecraft:sukyakura Sukima_.Items[0].id
data modify storage minecraft:sukyakura Sukima_.LogItems[-1] append value [" x"]
data modify storage minecraft:sukyakura Sukima_.LogItems[-1] append value [0]
execute store result storage minecraft:sukyakura Sukima_.LogItems[-1][-1][0] int 1 run data get storage minecraft:sukyakura Sukima_.Items[0].Count 1
data remove storage minecraft:sukyakura Sukima_.Items[0]
execute if data storage minecraft:sukyakura Sukima_.Items[0] run function sksukima:log/items
