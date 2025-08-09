#使用者にタグを付与
tag @s add sword.owner

#通常攻撃のfunctionを開始
function mddev_test1:sword/normal_srash/start

#進捗を削除
advancement revoke @s only mddev_test1:draft

#使用者からタグを削除
tag @s remove sword.owner

title @s title "caputured"