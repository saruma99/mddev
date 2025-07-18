#　@s=@a[scores={right_click=1..}]（指定スコア＝１をもつすべてのプレイヤー）

#　コマンド解説：summon <エンティティの種類> [<座標>] [<NBTデータ>]
# 　~ ~ ~ は実行者の座標、{Tags:[magic]}はタグ
summon armor_stand ~ ~ ~ {Tags:[magic]}

#　コマンド解説：tp <対象> <座標> [<向き>]
#　「tp」コマンドは移動させる、「@n」は最も近いエンティティ、typeやtagで指定対象を絞る、向きは ~ ~だと自分の向き
tp @n[type=armor_stand,tag=magic] ~ ~ ~ ~ ~

#　コマンド解説：scoreboard players set <対象> <スコア名> <値>
#　durationは寿命に使うスコアボード、20は20ティック（1秒）を意味する
#　@sは実行者を指す
scoreboard players set @n[type=armor_stand,tag=magic] duration 20
scoreboard players set @s right_click 0

