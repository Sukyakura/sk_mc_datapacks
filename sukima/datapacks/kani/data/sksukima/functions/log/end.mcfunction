tellraw @s {"text":"\n探索終了．\n該当のブロックを","extra":[{"score":{"name":"#Alice","objective":"sk_sukima_count"}},{"text":"個発見しました．"}],"color":"yellow"}
execute if score #Alice sk_sukima_count > #Alice sk_sukima_max run tellraw @s {"text":"(上限に達したため，最寄りの","extra":[{"score":{"name":"#Alice","objective":"sk_sukima_max"}},{"text":"個のみ表示しています．)"}],"color":"yellow"}
tellraw @s ""
