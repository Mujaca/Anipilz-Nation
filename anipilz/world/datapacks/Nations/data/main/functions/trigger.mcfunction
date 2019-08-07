execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:1}}},scores={CarrotClick=1..}] run tag @s add tntFalle
execute as @a[team=Koenigreich,tag=tntFalle] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["Falletnt","Timer"]}
execute as @e[type=armor_stand,tag=Falletnt,tag=rdy] if entity @a[distance=..1] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=Falletnt,tag=rdy] if entity @a[distance=..1] at @s run tag @s remove tellraw
execute as @e[type=armor_stand,tag=Falletnt,tag=rdy] if entity @a[distance=..1] run kill @s
execute as @e[type=armor_stand,tag=Falletnt,scores={Secs=5..}] run tag @s remove Timer
execute as @e[type=armor_stand,tag=Falletnt,scores={Secs=5..}] run tag @s add rdy
execute as @e[type=armor_stand,tag=Fallentnt,scores={Secs=5..},tag=!tellraw] run tellraw @s {"text":"Eine Falle wurde scharf gestellt"}
execute as @e[type=armor_stand,tag=Fallentnt,scores={Secs=5..},tag=!tellraw] run tag @s add tellraw
execute as @a[team=Koenigreich,tag=tntFalle] run clear @s carrot_on_a_stick 1
execute as @a[team=Koenigreich,tag=tntFalle] run tag @s remove tntFalle
