#2分探索で距離を求める

scoreboard players add #Alice sk_dist_cnt 1
execute positioned ^ ^ ^128.0 as @e[tag=sk_dist,sort=nearest,limit=1] if entity @s[tag=sk_dist_start] run scoreboard players add #Alice sk_dist_value 134217728
execute positioned ^ ^ ^128.0 as @e[tag=sk_dist,sort=nearest,limit=1] if entity @s[tag=sk_dist_start] run function skutil:distance/04
execute if score #Alice sk_dist_cnt matches 3 run function skutil:distance/04
