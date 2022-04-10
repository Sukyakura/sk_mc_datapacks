data modify storage minecraft:sukyakura Sukima_.Setting set value {ItemName:'{"text":"Sample1:箱入りアイテム探索","color":"aqua"}',LogOutput:true,MaxNumberOfPins:100,Box:true,BoxDetail:{CheckItem:true}}
data modify storage minecraft:sukyakura Sukima_.Settings set from storage minecraft:sukyakura Sukima.Settings
data modify storage minecraft:sukyakura Sukima.Settings set value []
execute if data storage minecraft:sukyakura Sukima_.Settings[0] run function sksukima:sample/delete
data modify storage minecraft:sukyakura Sukima.Settings append from storage minecraft:sukyakura Sukima_.Setting
give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sample1:箱入りアイテム探索","color":"aqua"}'}}
