#　@s=@e[type=armor_stand,tag=magic]（マジックタグをもつすべてのアーマースタンドエンティティ）

damage @n[distance=..1,type=!armor_stand,type=!player] 10

execute if entity @s[tag=charge] run summon lightning_bolt

kill @s