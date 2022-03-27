execute store success storage minecraft:sukyakura Search.success byte 1 run data modify storage minecraft:sukyakura Search.Items set from block ~ ~ ~ Items
execute if data storage minecraft:sukyakura {Search:{success:1b}} run function search:check_detail
