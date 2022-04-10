# 隙間を探索するやつ
## 簡単な使い方
1.以下のコマンドを実行すると「Sample1:箱入りアイテム探索」という名前のニンジン棒が手に入る．これを使うと周囲32x32x32のアイテム入りの箱を探索できる．<br>
`/function sksukima:sample/1`

2.以下のコマンドを実行すると「Sample2:ボタン/レバー探索」という名前のニンジン棒が手に入る．これを使うと周囲32x32x32のボタンとレバーを探索できる．<br>
`/function sksukima:sample/2`

3.以下のコマンドを実行すると「Sample3:文字付き看板探索」という名前のニンジン棒が手に入る．これを使うと周囲32x32x32の文字の書かれた看板を探索できる．<br>
`/function sksukima:sample/3`

4.以下のコマンドを実行すると「Sample4:アマスタ消去」という名前のニンジン棒が手に入る．これを使うと目印のアーマースタンドを消去できる．<br>
`/function sksukima:sample/4`

## カスタマイズ
例えば箱入りアイテム+ボタンを同時に探索したいとき，次のようにすれば良い．

1.サンプル用のsample/1.mcfunctionをコピー．(sample/customize.mcfunctionとする．)<br>

2.sample/customize.mcfunctionの1行目を次のようにする．<br>
`data modify storage minecraft:sukyakura Sukima_.Setting set value {ItemName:'{"text":"Customize:箱入りアイテム+ボタン探索","color":"aqua"}',LogOutput:true,MaxNumberOfPins:100,Box:true,BoxDetail:{CheckItem:true},Button:true,Lever:false,Sign:false}`<br>
・ItemName: 対応するニンジン棒の名前(display.Name)[String]<br>
・LogOutput: ログを出力するか否か(省略可能)[Byte]<br>
・MaxNumberOfPins: 設置するアマスタ数の上限(省略可能)[Int]<br>
・Box: 箱を探索するか否か(省略可能)[Byte]<br>
・BoxDetail.CheckItem: アイテムが入っている箱のみ探索するか否か(省略可能)[Byte]<br>
・Button: ボタンを探索するか否か(省略可能)[Byte]<br>
・Lever: レバーを探索するか否か(省略可能)[Byte]<br>
・Sign: 文字付き看板を探索するか否か(省略可能)[Byte]<br>

3.sample/customize.mcfunctionの6行目を次のようにする．<br>
`give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Customize:箱入りアイテム+ボタン探索","color":"aqua"}'}}`<br>
※display.Nameは2.のItemNameと一致させる必要がある．

4.リロードして以下のコマンドを実行すると「Customize:箱入りアイテム+ボタン探索」という名前のニンジン棒が手に入る．これを使うと周囲32x32x32の箱入りアイテムとボタンを同時に探索できる．<br>
`/function sksukima:sample/customize`

## 備考
対応バージョンはJE1.18.2<br>
ダウンロードはhttps://github.com/Sukyakura/sk_mc_datapacks からCode→Download ZIPでできます．sukimaフォルダの中身が本データパックとなります．
