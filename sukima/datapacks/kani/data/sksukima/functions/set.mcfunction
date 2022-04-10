summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true,Invisible:true,DisabledSlots:2097151,NoBasePlate:true,Small:true,NoGravity:true,Glowing:true,Tags:["sk_sukima"]}
execute if data storage minecraft:sukyakura {Sukima_:{Setting:{LogOutput:true}}} run function sksukima:log/find
scoreboard players add #Alice sk_sukima_count 1
execute if score #Alice sk_sukima_count > #Alice sk_sukima_max positioned as @s run kill @e[type=minecraft:armor_stand,tag=sk_sukima,sort=furthest,limit=1]
data modify storage minecraft:sukyakura Sukima_.SetArmorStand set value false
