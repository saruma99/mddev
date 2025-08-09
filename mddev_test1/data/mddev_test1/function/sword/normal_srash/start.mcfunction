#　@s=@a[scores={right_click=1..}]（指定スコア＝１をもつすべてのプレイヤー）

#　コマンド解説：summon <エンティティの種類> [<座標>] [<NBTデータ>]
# 　~ ~ ~ は実行者の座標、{Tags:[magic]}はタグ、Invisibleで透明化
summon armor_stand ~ ~ ~ {Tags:["sword.srash"]}

#　コマンド解説：tp <対象> <座標> [<向き>]
#　「tp」コマンドは移動させる、「@n」は最も近いエンティティ、typeやtagで指定対象を絞る
#　「~ ~1 ~」は実行者の１マス上、向きは 「~ ~」だと自分の向き、「~-75 0」は水平に75度回転
tp @n[type=armor_stand,tag=sword.srash] ~ ~ ~ ~-75 0

#　コマンド解説：scoreboard players set <対象> <スコア名> <値>
#　durationは寿命に使うスコアボード、20は20ティック（1秒）を意味する
#　@sは実行者を指す
scoreboard players set @n[type=armor_stand,tag=sword.srash] sword.duration 30

# 再帰functionの実行を開始
execute as @n[type=armor_stand,tag=sword.srash] as @s run function mddev_test1:sword/normal_srash/srash