execute as @a[scores={sk_sukima_carrot=1..1000}] run kill @e[tag=sk_sukima]
execute as @a[scores={sk_sukima_carrot=1..1000}] if data storage minecraft:sukyakura Sukima.Settings[0] if data entity @s SelectedItem.tag.display.Name positioned as @s run function sksukima:exec
scoreboard players set @a sk_sukima_carrot 0
