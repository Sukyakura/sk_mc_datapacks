#2分探索で距離を求める

scoreboard players add #Alice sk_dist_cnt 1
execute positioned ^ ^ ^256.0 as @e[tag=sk_dist,sort=nearest,limit=1] if entity @s[tag=sk_dist_start] run scoreboard players add #Alice sk_dist_value 268435456
execute positioned ^ ^ ^256.0 as @e[tag=sk_dist,sort=nearest,limit=1] if entity @s[tag=sk_dist_start] run function skutil:distance/03
execute if score #Alice sk_dist_cnt matches 2 run function skutil:distance/03
