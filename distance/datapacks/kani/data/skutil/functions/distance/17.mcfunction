#2分探索で距離を求める

scoreboard players add #Alice sk_dist_cnt 1
execute positioned ^ ^ ^0.0078125 as @e[tag=sk_dist,sort=nearest,limit=1] if entity @s[tag=sk_dist_start] run scoreboard players add #Alice sk_dist_value 8192
execute positioned ^ ^ ^0.0078125 as @e[tag=sk_dist,sort=nearest,limit=1] if entity @s[tag=sk_dist_start] run function skutil:distance/18
execute if score #Alice sk_dist_cnt matches 17 run function skutil:distance/18
