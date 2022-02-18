# sk_dist_startのタグを持ったエンティティからsk_dist_endのタグを持ったエンティティまでの距離を測定

#計算用scoreboardを追加
scoreboard objectives add sk_dist_value dummy
scoreboard objectives add sk_dist_cnt dummy
scoreboard players set #Alice sk_dist_value 0
scoreboard players set #Alice sk_dist_cnt 0

#タグを追加
tag @e remove sk_dist
tag @e[tag=sk_dist_start] add sk_dist
tag @e[tag=sk_dist_end] add sk_dist

#距離測定
execute positioned as @e[tag=sk_dist,tag=sk_dist_start,limit=1] facing entity @e[tag=sk_dist,tag=sk_dist_end,limit=1] feet run function skutil:distance/01

#storageに距離を格納
execute store result storage minecraft:sukyakura util.distance double 0.0000019073486328125 run scoreboard players get #Alice sk_dist_value

#startとendが同じ位置ならバグるので距離を0にする
data modify storage minecraft:sukyakura util.temp.hoge set from entity @e[tag=sk_dist,tag=sk_dist_start,limit=1] Pos
execute store success score #Alice sk_dist_cnt run data modify storage minecraft:sukyakura util.temp.hoge set from entity @e[tag=sk_dist,tag=sk_dist_end,limit=1] Pos
execute if score #Alice sk_dist_cnt matches 0 run scoreboard players set #Alice sk_dist_value 0
execute if score #Alice sk_dist_cnt matches 0 run data modify storage minecraft:sukyakura util.distance set value 0.0d
