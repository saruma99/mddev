#　@s（本来はサーバーだが、asで指定した場合は指定した対象になる）

#　コマンド解説：excute　実行者の指定　実行者の位置　実行コマンド
execute as @a[scores={right_click=1..}] at @s run function mddev_test1:right
execute as @e[type=armor_stand,tag=magic] at @s run function mddev_test1:shot