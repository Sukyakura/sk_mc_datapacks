# 2つのエンティティ(AとB)の間の距離を測定するやつ
## 使い方
1.以下のコマンドの「A」で適当なエンティティを設定する<br>
`/execute as A run function skutil:distance_start`

2.以下のコマンドの「B」で適当なエンティティを設定する<br>
`/execute as B run function skutil:distance_end`

3.以下のコマンドで距離を計算する<br>
`/function skutil:distance`

4.以下のコマンドでAB間の距離を取得できる(double型)<br>
`/data get storage minecraft:sukyakura util.distance`

## 備考
1024[m]まで算出可能<br>
最小単位は2^-19[m]
