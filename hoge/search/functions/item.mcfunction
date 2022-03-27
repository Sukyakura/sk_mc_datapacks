kill @e[type=minecraft:armor_stand,tag=sk_search]
data modify storage minecraft:sukyakura Search.Items set value []
execute if data entity @s SelectedItem positioned as @s positioned ~-15.5 ~-15.5 ~-15.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function search:x
