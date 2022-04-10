summon minecraft:marker ~ ~ ~ {Tags:["sk_sukima"]}
data modify storage minecraft:sukyakura Sukima_.Log set value [["("],[0],[", "],[0],[", "],[0],[")～("],[0],[", "],[0],[", "],[0],[")の範囲の探索を開始します．"]]
execute store result storage minecraft:sukyakura Sukima_.Log[1][0] int 1 run data get entity @e[type=minecraft:marker,tag=sk_sukima,limit=1] Pos[0] 1
execute store result storage minecraft:sukyakura Sukima_.Log[3][0] int 1 run data get entity @e[type=minecraft:marker,tag=sk_sukima,limit=1] Pos[1] 1
execute store result storage minecraft:sukyakura Sukima_.Log[5][0] int 1 run data get entity @e[type=minecraft:marker,tag=sk_sukima,limit=1] Pos[2] 1
teleport @e[type=minecraft:marker,tag=sk_sukima] ~32.0 ~32.0 ~32.0
execute store result storage minecraft:sukyakura Sukima_.Log[7][0] int 1 run data get entity @e[type=minecraft:marker,tag=sk_sukima,limit=1] Pos[0] 1
execute store result storage minecraft:sukyakura Sukima_.Log[9][0] int 1 run data get entity @e[type=minecraft:marker,tag=sk_sukima,limit=1] Pos[1] 1
execute store result storage minecraft:sukyakura Sukima_.Log[11][0] int 1 run data get entity @e[type=minecraft:marker,tag=sk_sukima,limit=1] Pos[2] 1
tellraw @s ""
tellraw @s {"storage":"minecraft:sukyakura","nbt":"Sukima_.Log","interpret":true,"color":"yellow"}
data modify storage minecraft:sukyakura Sukima_.Log set value [["[箱:"],["OFF"],[", "],["ボタン:"],["OFF"],[", "],["レバー:"],["OFF"],[", "],["文字付き看板:"],["OFF"],["]"]]
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Box:true}}} run data modify storage minecraft:sukyakura Sukima_.Log[1][0] set value "ON"
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Button:true}}} run data modify storage minecraft:sukyakura Sukima_.Log[4][0] set value "ON"
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Lever:true}}} run data modify storage minecraft:sukyakura Sukima_.Log[7][0] set value "ON"
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Sign:true}}} run data modify storage minecraft:sukyakura Sukima_.Log[10][0] set value "ON"
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{Box:true,BoxDetail:{CheckItem:true}}}} run data modify storage minecraft:sukyakura Sukima_.Log insert 2 value ["(アイテム入り)"]
tellraw @s {"storage":"minecraft:sukyakura","nbt":"Sukima_.Log","interpret":true,"color":"yellow"}
tellraw @s ""
