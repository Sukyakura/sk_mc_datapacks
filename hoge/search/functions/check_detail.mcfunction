execute if data storage minecraft:sukyakura Search.Items[-1] store success storage minecraft:sukyakura Search.success byte 1 run data modify storage minecraft:sukyakura Search.Items[-1].id set from entity @s SelectedItem.id
execute if data storage minecraft:sukyakura {Search:{success:0b}} run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Glowing:true,Tags:["sk_search"]}
data remove storage minecraft:sukyakura Search.Items[-1]
execute if data storage minecraft:sukyakura Search.Items[-1] run function search:check_detail
