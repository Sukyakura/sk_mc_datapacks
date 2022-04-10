data modify storage minecraft:sukyakura Sukima_.Setting set from storage minecraft:sukyakura Sukima_.Settings[-1]
scoreboard players set #Alice sk_sukima_count 0
execute store result score #Alice sk_sukima_max run data get storage minecraft:sukyakura Sukima_.Setting.MaxNumberOfPins 1
execute unless data storage minecraft:sukyakura Sukima_.Setting.MaxNumberOfPins run scoreboard players set #Alice sk_sukima_max 32768
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{LogOutput:true}}} run function sksukima:log/start
data modify storage minecraft:sukyakura Sukima_.SetArmorStand set value false
execute store success storage minecraft:sukyakura Sukima_.Setting.Box byte 1 run execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Box:true}}}
execute store success storage minecraft:sukyakura Sukima_.Setting.Button byte 1 run execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Button:true}}}
execute store success storage minecraft:sukyakura Sukima_.Setting.Lever byte 1 run execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Lever:true}}}
execute store success storage minecraft:sukyakura Sukima_.Setting.Sign byte 1 run execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Sign:true}}}
execute store success storage minecraft:sukyakura Sukima_.Setting.BoxDetail.CheckItem byte 1 run execute if data storage minecraft:sukyakura {Sukima_:{Setting:{BoxDetail:{CheckItem:true}}}}
execute positioned ~0.0 ~ ~ run function sksukima:y
execute positioned ~1.0 ~ ~ run function sksukima:y
execute positioned ~2.0 ~ ~ run function sksukima:y
execute positioned ~3.0 ~ ~ run function sksukima:y
execute positioned ~4.0 ~ ~ run function sksukima:y
execute positioned ~5.0 ~ ~ run function sksukima:y
execute positioned ~6.0 ~ ~ run function sksukima:y
execute positioned ~7.0 ~ ~ run function sksukima:y
execute positioned ~8.0 ~ ~ run function sksukima:y
execute positioned ~9.0 ~ ~ run function sksukima:y
execute positioned ~10.0 ~ ~ run function sksukima:y
execute positioned ~11.0 ~ ~ run function sksukima:y
execute positioned ~12.0 ~ ~ run function sksukima:y
execute positioned ~13.0 ~ ~ run function sksukima:y
execute positioned ~14.0 ~ ~ run function sksukima:y
execute positioned ~15.0 ~ ~ run function sksukima:y
execute positioned ~16.0 ~ ~ run function sksukima:y
execute positioned ~17.0 ~ ~ run function sksukima:y
execute positioned ~18.0 ~ ~ run function sksukima:y
execute positioned ~19.0 ~ ~ run function sksukima:y
execute positioned ~20.0 ~ ~ run function sksukima:y
execute positioned ~21.0 ~ ~ run function sksukima:y
execute positioned ~22.0 ~ ~ run function sksukima:y
execute positioned ~23.0 ~ ~ run function sksukima:y
execute positioned ~24.0 ~ ~ run function sksukima:y
execute positioned ~25.0 ~ ~ run function sksukima:y
execute positioned ~26.0 ~ ~ run function sksukima:y
execute positioned ~27.0 ~ ~ run function sksukima:y
execute positioned ~28.0 ~ ~ run function sksukima:y
execute positioned ~29.0 ~ ~ run function sksukima:y
execute positioned ~30.0 ~ ~ run function sksukima:y
execute positioned ~31.0 ~ ~ run function sksukima:y
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{LogOutput:true}}} run function sksukima:log/end
data modify storage minecraft:sukyakura Sukima_.Settings set value []