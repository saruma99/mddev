#　@s=@e[type=armor_stand,tag=magic]（マジックタグをもつすべてのアーマースタンドエンティティ）

#　コマンド解説：tp <対象> <相対座標>
#　^ ^ ^1 は実行者の向いている方向に1ブロック進める
tp @s ^ ^ ^1

#　コマンド解説：scoreboard players remove <対象> <スコア名> <値>
#　durationスコアを1tickごとに1減らす（Minecraftは1秒間に20tick進むので、1tick = 0.05秒）
scoreboard players remove @s duration 1

#　コマンド解説：particle <パーティクル名> <パーティクルデータ> <相対座標>
#　実行者の位置に、水色っぽい大きな粒子エフェクトを表示
#　dustのみ色やスケールを指定できる
# エフェクト案１----
execute if entity @s[tag=charge] run particle dust{color:[1.0,0.2,0.05],scale:2} ~ ~1 ~
execute if entity @s[tag=charge] run particle dust{color:[1.0,1.0,0.2],scale:3} ~ ~1 ~
execute if entity @s[tag=charge] run particle soul_fire_flame ~ ~1 ~ 0 0 0 0 5

execute if entity @s[tag=!charge] run particle soul_fire_flame ~ ~1 ~ 0 0 0 0 5

#　気に入ったエフェクト
# particle happy_villager ~-2 ~1 ~
# particle electric_spark ~ ~1 ~
# particle soul_fire_flame ~2 ~1 ~

#　コマンド解説：kill <対象>
#　durationスコアが0以下になったら自分自身を消す
kill @s[scores={duration=..0}]

execute if entity @n[distance=..1,type=!armor_stand,type=!player] run function mddev_test1:damage