#　@s=@a[scores={right_click=1..}]（指定スコア＝１をもつすべてのプレイヤー）

execute if entity @s[scores={sneak=0,cooldown=0}] run function mddev_test1:normal_shot

execute if entity @s[scores={sneak=1,cooldown=0}] run function mddev_test1:charge_shot

scoreboard players set @s right_click 0