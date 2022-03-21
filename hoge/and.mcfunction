#
# C = A xor B
#   = A + B - (A and B) * 2
#
# 以下事前にやっておくこと ([A],[B]は0～255までの数)
#
# scoreboard objectives add sk_bit_A dummy
# scoreboard objectives add sk_bit_B dummy
# scoreboard objectives add sk_bit_C dummy
# scoreboard objectives add sk_const_2 dummy
# scoreboard objectives add sk_const_16777216 dummy
# scoreboard players set #Alice sk_bit_A [A]
# scoreboard players set #Alice sk_bit_B [B]
# scoreboard players set #Alice sk_const_2 2
# scoreboard players set #Alice sk_const_16777216 16777216
#
# 計算結果は sk_bit_C に代入される
# ※計算過程で sk_bit_A と sk_bit_B の値は書き換わる
#

#C = A + B
scoreboard players operation #Alice sk_bit_C = #Alice sk_bit_A
scoreboard players operation #Alice sk_bit_C += #Alice sk_bit_B

#ビット列[oxxxxxxx]のo部分がA,B両方で1ならC-=256
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_16777216
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_16777216
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 256

#ビット列[xoxxxxxx]のo部分がA,B両方で1ならC-=128
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 128

#ビット列[xxoxxxxx]のo部分がA,B両方で1ならC-=64
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 64

#ビット列[xxxoxxxx]のo部分がA,B両方で1ならC-=32
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 32

#ビット列[xxxxoxxx]のo部分がA,B両方で1ならC-=16
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 16

#ビット列[xxxxxoxx]のo部分がA,B両方で1ならC-=8
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 8

#ビット列[xxxxxxox]のo部分がA,B両方で1ならC-=4
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 4

#ビット列[xxxxxxxo]のo部分がA,B両方で1ならC-=2
scoreboard players operation #Alice sk_bit_A *= #Alice sk_const_2
scoreboard players operation #Alice sk_bit_B *= #Alice sk_const_2
execute if score #Alice sk_bit_A matches ..-1 if score #Alice sk_bit_B matches ..-1 run scoreboard players remove #Alice sk_bit_C 2

