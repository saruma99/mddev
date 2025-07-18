#　@s=@e[type=armor_stand,tag=magic]（マジックタグをもつすべてのアーマースタンドエンティティ）

#　コマンド解説：tp <対象> <相対座標>
#　^ ^ ^1 は実行者の向いている方向に1ブロック進める
tp @s ^ ^ ^1

#　コマンド解説：scoreboard players remove <対象> <スコア名> <値>
#　durationスコアを1tickごとに1減らす（Minecraftは1秒間に20tick進むので、1tick = 0.05秒）
scoreboard players remove @s duration 1

#　コマンド解説：kill <対象>
#　durationスコアが0以下になったら自分自身を消す
kill @s[scores={duration=..0}]