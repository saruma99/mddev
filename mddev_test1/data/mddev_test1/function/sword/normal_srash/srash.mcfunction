#　パーティクルを出すコマンド
particle dust{color:[1.0,0.45,0.2],scale:1} ^2.8 ^1 ^ 0.1 0.1 0.1 3 10 normal @a
particle dust{color:[1.0,0.5,0.2],scale:1} ^2.6 ^1 ^ 0.1 0.1 0.1 3 10 normal @a
particle dust{color:[1.0,0.55,0.2],scale:1} ^2.4 ^1 ^ 0.1 0.1 0.1 3 10 normal @a
particle dust{color:[1.0,0.6,0.2],scale:1} ^2.2 ^1 ^ 0.1 0.1 0.1 3 10 normal @a
particle dust{color:[1.0,0.65,0.2],scale:1} ^2 ^1 ^ 0.1 0.1 0.1 3 10 normal @a

#　スコアを減らす
scoreboard players remove @s sword.duration 1

#　見ている2.4ブロック先で実行　1ブロック以内にエンティティがいたらダメージ処理
# execute positioned ^ ^ ^2.4 as @e[tag=!sword.srash,distance=..1] run function mddev_test1:damage

#　スコアが１以上なら右に５度ずらして再びコマンドを実行
execute if score @s sword.duration matches 1.. rotated ~5 ~ run function mddev_test1:sword/normal_srash/srash

#　スコアが0以下なら防具盾をkillする
kill @s[scores={sword.duration=0..}]