function main:trigger
function main:raids
scoreboard players enable @a stats
kill @e[type=minecraft:phantom]
kill @e[type=minecraft:wither,tag=!RaidBoss]
#execute as @a[scores={WitherKills=1..},tag=!Raid] at @s run kill @e[nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..10]
clear @a minecraft:enchanting_table
#execute as @a[team=!Koenigreich,nbt={SelectedItem:{id:"minecraft:redstone"}},tag=!gm] run tellraw @s {"text":"Du weißt nicht was man damit machen kann!"}
#execute as @a[team=!Koenigreich,nbt={SelectedItem:{id:"minecraft:redstone"}},tag=!gm] run gamemode adventure @s
#execute as @a[team=!Koenigreich,nbt={SelectedItem:{id:"minecraft:redstone"}},tag=!gm] run tag @s add gm
#execute as @a[team=!Koenigreich,nbt=!{SelectedItem:{id:"minecraft:redstone"}}] run gamemode survival @s
#execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:potion"}}] run tag @s remove gm
execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:potion"}}] run effect give @s minecraft:instant_damage 1 0
execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:potion"}}] run clear @s potion 1
execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:splash_potion"}}] run effect give @s minecraft:instant_damage 1 0
execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:splash_potion"}}] run clear @s splash_potion 1
execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:lingering_potion"}}] run effect give @s minecraft:instant_damage 1 0
execute as @a[team=!HeiligesReich,nbt={SelectedItem:{id:"minecraft:lingering_potion"}}] run clear @s lingering_potion 1
execute as @a[tag=!SetUp] run replaceitem entity @s hotbar.1 written_book{pages:["{\"text\":\"Das Heilige Reich: \\n\\nDas Heilige Reich besitzt seit Jahrtausenden die Kunst der Magie.\\n\\nUm diese nutzen zu können, benötigen sie Mana. Dieses stellen sie durch das Trinken von Tränken her. \"}","{\"text\":\"Zauberstäbe werden hergestellt, indem man eine Blaze Rod + ein \\\"Merkmal\\\" Item des Effektes des Stabes auf den Boden wirft. \\n\\nDie Liste der Effekte und alle weiteren Informationen kannst du mit \\\"/trigger Team\\\" jederzeit einsehen. \"}"],title:HeiligesReich,author:Mujaca}
execute as @a[tag=!SetUp] run replaceitem entity @s hotbar.2 written_book{pages:["{\"text\":\"Königreich : \\n\\nDas Königreich hat vor einiger Zeit die Vorteile der Technik erkannt und diese nutzen sie nun aus. \\n\\nSo können sie zB mit einer Uhr in der Hand und ein wenig Licht umlenkung unsichtbar werden.\"}","{\"text\":\"Man sagt ihnen sogar hinterher, dass sie mit Hilfe der Technik einen Pfeil erfunden haben, der sie bei Berührung mit dem Boden, zum Aufschlag Ort des Pfeils bringt.\\n\\nAußerdem soll es auch noch weitere Geheimnisse geben, vielleich solltest du es dir einfach selbst ansehen\"}"],title:"Königreich",author:Mujaca}
execute as @a[tag=!SetUp] run replaceitem entity @s hotbar.3 written_book{pages:["{\"text\":\"Mongolenreich : \\n\\nDas wildeste aller Teams.\\nSie sind recht unzivilisiert und werden recht schnell durch das Töten von Lebewesen wütend. Je wütender sie werden, desto stärker, aber auch benommner werden sie.\"}","{\"text\":\"Ihre Wut baut sich rech langsam oder bei ihrem Tod wieder ab.\\n\\nDafür sind aber ihre Spitzhacken, die besten in der bekannten Welt.\"}"],title:Mongolenreich,author:Mujaca}
#execute as @a[tag=!SetUp] run replaceitem entity @s hotbar.0 written_book{pages:["{\"text\":\"Allgemeines : \\n\\nWilkommen auf dem AniPilz Roleplay Server. \\nDamit das ganze gut umgesetzt werden kann, wurde einiges geändert und hier findest du die Änderungen, die alle Teams betreffen. Alles andere findest du in den Team Büchern, in deinem Inventar!\"}","{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Waffen und Rüstungen, können nicht normal gecraftet werden. Die Rezepte werde ich auf der Website \\\"mujaca.de\\\" für alle zugänglich machen. \"}","{\"text\":\"Nether Portale sind ausgeschaltet. Man wird den Nether über einen Warp oder ein Warp Schild in der Mitte der Insel finden können.\\nWo das ist? Find es heraus :D.\"}","[\"\",{\"text\":\"Für den Fall das der Server mal Probleme hat oder sonst was kannst du immer auf der Status Seite (\"},{\"text\":\"http://anipilz.tiggy-dev.de\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"http://anipilz.tiggy-dev.de\"}},{\"text\":\") nachsehen!\"}]","{\"text\":\"Damit wünsche ich dir Viel Spaß. Bei Fragen, Bugs oder ähnlich einfach auf Discord oder Ingame bei mir oder einem anderem Admin (Auf Discord pinbar per @Mc-Admin) melden. \\n\\n\\n\\nViel Spaß und Viel Erfolg, Mujaca\"}"],title:"Allgemeine Informationen",author:Mujaca,display:{Lore:["Dieses Buch behält man nach der Team Auswahl als einziges Buch! (Abgesehen von der ersten Seite, die ist dann Weg)"]}}

#execute as @a[tag=!SetUp] run effect give @s slowness 3 255 true
execute as @a[tag=!SetUp] run effect give @s jump_boost 3 255 true
#execute as @a[tag=!SetUp] run effect give @s blindness 3 255 true
#execute as @a[tag=!SetUp] run effect give @s night_vision 3 255 true
execute as @a[tag=!SetUp] at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 glass
execute as @a[tag=!SetUp,scores={ReJoin=1..}] run tag @s remove send
execute as @a[tag=!SetUp,scores={ReJoin=1..}] run scoreboard players set @s ReJoin 0


scoreboard players enable @a[tag=!SetUp] Team
execute as @a[tag=!SetUp,tag=!send] run tellraw @s ["",{"text":"Wilkommen auf dem Anipilz RoleplayServer! :D\nBitte wählen ein Team : \n- "},{"text":"Heiliges Reich","clickEvent":{"action":"run_command","value":"/trigger Team set 1"}},{"text":"\n- "},{"text":"Königreich","clickEvent":{"action":"run_command","value":"/trigger Team set 2"}},{"text":"\n- "},{"text":"Mongolenreich","clickEvent":{"action":"run_command","value":"/trigger Team set 3"}}]
execute as @a[tag=!SetUp] run tag @s add send

execute as @a[tag=!SetUp,scores={Team=1}] run tag @s add joinHeiligesReich
execute as @a[tag=!SetUp,scores={Team=2}] run tag @s add joinKoenigreich
execute as @a[tag=!SetUp,scores={Team=3}] run tag @s add joinMongolenreich

execute as @a[tag=!SetUp,scores={Team=1}] run scoreboard players reset @s Team
execute as @a[tag=!SetUp,scores={Team=2}] run scoreboard players reset @s Team
execute as @a[tag=!SetUp,scores={Team=3}] run scoreboard players reset @s Team

execute as @a[tag=!SetUp,tag=joinHeiligesReich] run team join HeiligesReich
execute as @a[tag=!SetUp,tag=joinHeiligesReich] at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s Mana 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run tp @s -570 73 -855
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run spawnpoint @s -570 73 -855
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s Leben 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s Angriff 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s Verteidigung 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s Bspeed 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s Schmiedekunst 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run scoreboard players set @s ManaSP 0
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run clear @s written_book
#execute as @a[tag=!SetUp,tag=joinHeiligesReich] run replaceitem entity @s slot.hotbar.0 written_book{pages:["{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Waffen und Rüstungen, können nicht normal gecraftet werden. Die Rezepte werde ich auf der Website \\\"mujaca.de\\\" für alle zugänglich machen. \"}","{\"text\":\"Nether Portale sind ausgeschaltet. Man wird den Nether über einen Warp oder ein Warp Schild in der Mitte der Insel finden können.\\nWo das ist? Find es heraus :D.\"}","[\"\",{\"text\":\"Für den Fall das der Server mal Probleme hat oder sonst was kannst du immer auf der Status Seite (\"},{\"text\":\"http://anipilz.tiggy-dev.de\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"http://anipilz.tiggy-dev.de\"}},{\"text\":\") nachsehen!\"}]"],title:"Allgemeine Informationen",author:Mujaca}
execute as @a[tag=!SetUp,tag=joinHeiligesReich] run tag @s add SetUp
execute as @a[tag=SetUp,tag=joinHeiligesReich] run tag @s remove joinHeiligesReich

execute as @a[tag=!SetUp,tag=joinKoenigreich] run team join Koenigreich
execute as @a[tag=!SetUp,tag=joinKoenigreich] at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air
execute as @a[tag=!SetUp,tag=joinKoenigreich] run tp @s -398 63 -660
execute as @a[tag=!SetUp,tag=joinKoenigreich] run spawnpoint @s -398 63 -660
execute as @a[tag=!SetUp,tag=joinKoenigreich] run scoreboard players set @s Leben 0
execute as @a[tag=!SetUp,tag=joinKoenigreich] run scoreboard players set @s Angriff 0
execute as @a[tag=!SetUp,tag=joinKoenigreich] run scoreboard players set @s Verteidigung 0
execute as @a[tag=!SetUp,tag=joinKoenigreich] run scoreboard players set @s Bspeed 0
execute as @a[tag=!SetUp,tag=joinKoenigreich] run scoreboard players set @s Schmiedekunst 0
execute as @a[tag=!SetUp,tag=joinKoenigreich] run clear @s written_book
#execute as @a[tag=!SetUp,tag=joinKoenigreich] run replaceitem entity @s slot.hotbar.0 written_book{pages:["{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Waffen und Rüstungen, können nicht normal gecraftet werden. Die Rezepte werde ich auf der Website \\\"mujaca.de\\\" für alle zugänglich machen. \"}","{\"text\":\"Nether Portale sind ausgeschaltet. Man wird den Nether über einen Warp oder ein Warp Schild in der Mitte der Insel finden können.\\nWo das ist? Find es heraus :D.\"}","[\"\",{\"text\":\"Für den Fall das der Server mal Probleme hat oder sonst was kannst du immer auf der Status Seite (\"},{\"text\":\"http://anipilz.tiggy-dev.de\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"http://anipilz.tiggy-dev.de\"}},{\"text\":\") nachsehen!\"}]"],title:"Allgemeine Informationen",author:Mujaca}
execute as @a[tag=!SetUp,tag=joinKoenigreich] run tag @s add SetUp
execute as @a[tag=SetUp,tag=joinKoenigreich] run tag @s remove joinKoenigreich

execute as @a[tag=!SetUp,tag=joinMongolenreich] run team join Mongolenreich
execute as @a[tag=!SetUp,tag=joinMongolenreich] at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air
execute as @a[tag=!SetUp,tag=joinMongolenreich] run tp @s -739 62 -636
execute as @a[tag=!SetUp,tag=joinMongolenreich] run spawnpoint @s -739 62 -636
execute as @a[tag=!SetUp,tag=joinMongolenreich] run scoreboard players set @s Leben 0
execute as @a[tag=!SetUp,tag=joinMongolenreich] run scoreboard players set @s Angriff 0
execute as @a[tag=!SetUp,tag=joinMongolenreich] run scoreboard players set @s Verteidigung 0
execute as @a[tag=!SetUp,tag=joinMongolenreich] run scoreboard players set @s Bspeed 0
execute as @a[tag=!SetUp,tag=joinMongolenreich] run scoreboard players set @s Schmiedekunst 0
execute as @a[tag=!SetUp,tag=joinMongolenreich] run clear @s written_book
#execute as @a[tag=!SetUp,tag=joinMongolenreich] run replaceitem entity @s slot.hotbar.0 written_book{pages:["{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Allgemein zu sagen gibt es, dass es ein Level-System gibt. Zum Anfang braucht man 5 Minecraft Level für den Level Aufstieg, dies erhöht sich aber. Ab Level 10 bleiben die XP für das nächste Level immer auf 30.\"}","{\"text\":\"Waffen und Rüstungen, können nicht normal gecraftet werden. Die Rezepte werde ich auf der Website \\\"mujaca.de\\\" für alle zugänglich machen. \"}","{\"text\":\"Nether Portale sind ausgeschaltet. Man wird den Nether über einen Warp oder ein Warp Schild in der Mitte der Insel finden können.\\nWo das ist? Find es heraus :D.\"}","[\"\",{\"text\":\"Für den Fall das der Server mal Probleme hat oder sonst was kannst du immer auf der Status Seite (\"},{\"text\":\"http://anipilz.tiggy-dev.de\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"http://anipilz.tiggy-dev.de\"}},{\"text\":\") nachsehen!\"}]"],title:"Allgemeine Informationen",author:Mujaca}
execute as @a[tag=!SetUp,tag=joinMongolenreich] run tag @s add SetUp
execute as @a[tag=SetUp,tag=joinMongolenreich] run tag @s remove joinMongolenreich

execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe",Count:1b}}] run enchant @s minecraft:efficiency 1
execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:stone_pickaxe",Count:1b}}] run enchant @s minecraft:efficiency 2
execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b}}] run enchant @s minecraft:efficiency 3
execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:goldenen_pickaxe",Count:1b}}] run enchant @s minecraft:efficiency 4
execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b}}] run enchant @s minecraft:efficiency 5
execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:goldenen_pickaxe",Count:1b}}] run enchant @s unbreaking 2
execute as @a[team=Mongolenreich,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b}}] run enchant @s unbreaking 3
execute as @a[team=Mongolenreich] run title @s actionbar [{"text":"Wut Level "},{"score":{"name":"@s","objective":"Wut"}},{"text":" / 20"}]
execute as @a[team=Mongolenreich,scores={SeelenPlayerRL=1..}] run scoreboard players add @s Wut 3
execute as @a[team=Mongolenreich,scores={SeelenMobsRL=1..}] run scoreboard players add @s Wut 1
execute as @e[type=armor_stand,tag=SpawnMongolenreich,scores={Secs=10..}] run scoreboard players remove @a[scores={Wut=1..}] Wut 1
execute as @e[type=armor_stand,tag=SpawnMongolenreich,scores={Secs=10..}] run scoreboard players set @s Secs 0
execute as @a[scores={Wut=21..}] run scoreboard players set @s Wut 20
execute as @a[team=Mongolenreich] run scoreboard players reset @s SeelenMobsRL
execute as @a[team=Mongolenreich] run scoreboard players reset @s SeelenPlayerRL
execute as @a[scores={Wut=1..},team=Mongolenreich] run effect give @s strength 2 0
execute as @a[scores={Wut=3..},team=Mongolenreich] run effect give @s slowness 2 0
execute as @a[scores={Wut=5..},team=Mongolenreich] run effect give @s strength 2 1
execute as @a[scores={Wut=7..},team=Mongolenreich] run effect give @s nausea 10000 0
execute as @a[scores={Wut=..6},team=Mongolenreich] run effect clear @s nausea
execute as @a[scores={Wut=8..},team=Mongolenreich] run effect give @s slowness 2 1
execute as @a[scores={Wut=10..},team=Mongolenreich] run effect give @s strength 2 2
execute as @a[scores={Wut=11..},team=Mongolenreich] run effect give @s resistance 2 0
execute as @a[scores={Wut=15..},team=Mongolenreich] run effect give @s strength 2 3
execute as @a[scores={Wut=18..},team=Mongolenreich] run effect give @s slowness 2 2
execute as @a[scores={Wut=20..},team=Mongolenreich] run effect give @s strength 2 4


execute at @e[type=minecraft:spectral_arrow] as @a[team=Koenigreich,distance=..2] as @e[type=spectral_arrow, tag=Shooted] run tp @a[tag=Arrow] @s
execute at @e[type=minecraft:spectral_arrow] as @a[team=Koenigreich,distance=..2] as @e[type=spectral_arrow, tag=Shooted] run kill @e[type=spectral_arrow,tag=Shooted]
execute at @e[type=minecraft:spectral_arrow] as @a[team=Koenigreich,distance=..2] as @a[team=Koenigreich,tag=Arrow] run tag @s remove Arrow
execute at @e[type=minecraft:spectral_arrow] as @a[team=Koenigreich,distance=..2] run tag @e[type=minecraft:spectral_arrow,distance=..2] add Shooted
execute at @e[type=minecraft:spectral_arrow] as @a[team=Koenigreich,distance=..2] run tag @s add Arrow
execute at @e[type=spectral_arrow,tag=Shooted] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"portal",ReapplicationDelay:0,Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,Age:40,WaitTime:0}
execute as @e[tag=Shooted,type=minecraft:spectral_arrow] at @s if entity @e[type=spectral_arrow,tag=Shooted,nbt={inGround:1b}] run tp @a[tag=Arrow] @s
execute as @e[tag=Shooted,type=minecraft:spectral_arrow] at @s if entity @e[type=spectral_arrow,tag=Shooted,nbt={inGround:1b}] as @a[team=Koenigreich,tag=Arrow] run tag @s remove Arrow
execute as @e[tag=Shooted,type=minecraft:spectral_arrow] at @s if entity @e[type=spectral_arrow,tag=Shooted,nbt={inGround:1b}] run kill @e[type=spectral_arrow,tag=Shooted]
execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:clock", Count:1b}}] run effect give @s invisibility 100 255 true
execute as @a[team=Koenigreich,nbt=!{SelectedItem:{id:"minecraft:clock", Count:1b}}] run effect clear @s invisibility
execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:compass"}}] run effect give @s jump_boost 2 1 true
execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:compass"}}] run effect give @s speed 2 0 true
execute as @a[team=Koenigreich,nbt=!{SelectedItem:{id:"minecraft:compass"}}] run effect clear @s speed
execute as @a[team=Koenigreich,nbt=!{SelectedItem:{id:"minecraft:compass"}}] run effect clear @s jump_boost
execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["TurretEins","Timer"],NoGravity:1b}
execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..}] at @s run tp @e[type=armor_stand,tag=TurretEins,distance=..1] ~ ~ ~
execute as @a[team=Koenigreich,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}}] at @e[type=armor_stand,tag=TurretEins] run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=TurretEins] if entity @a[team=!Koenigreich,distance=..10,scores={Secs=2}] at @s run summon arrow ~ ~1.5 ~ {Motion:[0.0,0.0,1.0]}
execute as @e[type=armor_stand,tag=TurretEins] if entity @a[team=!Koenigreich,scores={Secs=3}] at @s run scoreboard players set @s Secs 0
execute as @e[type=armor_stand,tag=TurretEins] if entity @a[team=!Koenigreich] at @s run tag @s add Destroy
execute as @e[type=armor_stand,tag=TurretEins] if entity @a[team=!Koenigreich] at @s if block ~ ~-1 ~ redstone_block run tag @s remove Destroy
execute as @e[type=armor_stand,tag=TurretEins,tag=Destroy] run kill @s


execute as @a[team=HeiligesReich,scores={ManaRL=1..}] run scoreboard players add @s Mana 10
execute as @a[team=HeiligesReich,scores={ManaRL=1..}] run scoreboard players reset @s ManaRL
execute as @a[team=HeiligesReich] run title @s actionbar [{"text":"Mana "},{"score":{"name":"@s","objective":"Mana"}},{"text":" / 100"}]
execute as @a[team=HeiligesReich,scores={Mana=101..}] run scoreboard players set @s Mana 100
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:1}}},scores={CarrotClick=1..Mana=20..},team=HeiligesReich] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"effect",Radius:5f,Duration:200,DurationOnUse:0f,Effects:[{Id:10b,Amplifier:0b,Duration:100,ShowParticles:1b}]}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:1}}},scores={CarrotClick=1..Mana=20..},team=HeiligesReich] run scoreboard players remove @s Mana 20
execute as @a[team=HeiligesReich] at @s run tag @e[type=item,distance=..6,nbt={Item:{id:"minecraft:blaze_rod"}}] add Heilstuff1
execute as @a[team=HeiligesReich] at @s run tag @e[type=item,distance=..6,nbt={Item:{id:"minecraft:ghast_tear"}}] add Heilstuff2
execute as @e[tag=Heilstuff1] at @s if entity @e[tag=Heilstuff2,distance=..1] run tag @s add Heilstuff
execute as @e[type=item,tag=Heilstuff] at @s run kill @e[tag=Heilstuff2,distance=..1,limit=1]
execute as @e[type=item,tag=Heilstuff] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Umgebungsheilstab\",\"color\":\"golden\"}",Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Umgebungsheilstab\",\"color\":\"green\"}",Lore:["Kosten : 20 Mana"]},Unbreakable:1b,Damage:1}}}
execute as @e[type=item,tag=Heilstuff] run kill @s
execute as @a[team=HeiligesReich] at @s run tag @e[type=item,distance=..6,nbt={Item:{id:"minecraft:blaze_rod"}}] add Heilstuff1
execute as @a[team=HeiligesReich] at @s run tag @e[type=item,distance=..6,nbt={Item:{id:"minecraft:fermented_spider_eye"}}] add Heilstuff3
execute as @e[tag=Heilstuff1] at @s if entity @e[tag=Heilstuff3,distance=..1] run tag @s add Heilstuff
execute as @e[type=item,tag=Heilstuff] at @s run kill @e[tag=Heilstuff3,distance=..1,limit=1]
execute as @e[type=item,tag=Heilstuff] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"DamageStab\",\"color\":\"golden\"}",Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"DamageStab\",\"color\":\"green\"}",Lore:["Kosten : 10 Mana"]},Unbreakable:1b,Damage:2}}}
execute as @e[type=item,tag=Heilstuff] run kill @s

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..,Mana=10..},team=HeiligesReich] at @s run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Glowing:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:0b,Tags:["dmg","Timer"],ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..,Mana=10..},team=HeiligesReich] at @s run tag @s add none
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..,Mana=10..},team=HeiligesReich] at @s run scoreboard players remove @s Mana 10
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..,Mana=10..},team=HeiligesReich] at @s as @e[type=armor_stand,tag=dmg,distance=..1] run tp ~ ~ ~
execute as @e[type=armor_stand,tag=dmg] at @s run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=dmg] at @s if entity @a[tag=!none,distance=..1] run effect give @e[tag=!none,distance=..1,type=!armor_stand] instant_damage 1 0
execute as @e[type=armor_stand,tag=dmg] at @s if entity @a[tag=none,distance=2..3] run tag @a[tag=none,distance=3..] remove none
execute as @e[type=armor_stand,tag=dmg] at @s if entity @a[tag=!none,distance=..1] run kill @s
execute as @e[type=armor_stand,tag=dmg,scores={Secs=5..}] run kill @s

execute as @a[team=Daemonen,scores={SeelenPlayerRL=1..}] run scoreboard players add @s Seelen 1
execute as @a[team=Daemonen,scores={SeelenMobsRL=1..}] run scoreboard players add @s Seelen 1
execute as @a[team=Daemonen,scores={SeelenPlayerRL=1..}] run scoreboard players reset @s SeelenPlayerRL
execute as @a[team=Daemonen,scores={SeelenMobsRL=1..}] run scoreboard players reset @s SeelenMobsRL
execute as @a[team=Daemonen] run title @s actionbar ["",{"text":"Seelen: "},{"score":{"name":"@s","objective":"Seelen"}}]
execute as @a[team=Daemonen] at @s run tag @e[type=item,distance=..6,nbt={Item:{id:"minecraft:blaze_rod"}}] add Fliegen1
execute as @a[team=Daemonen] at @s run tag @e[type=item,distance=..6,nbt={Item:{id:"minecraft:feather"}}] add Fliegen2
execute as @e[tag=Fliegen1] at @s if entity @e[tag=Fliegen2,distance=..1] run tag @s add Fliegen
execute as @e[type=item,tag=Fliegen] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Flugstab\",\"color\":\"golden\"}",Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Flugstab\",\"color\":\"green\"}",Lore:["Kosten : 1 Seele"]},Unbreakable:1b,Damage:1}}}
execute as @e[type=item,tag=Fliegen] at @s run kill @e[tag=Fliegen2,distance=..1,limit=1]
execute as @e[type=item,tag=Fliegen] at @s run kill @s
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:1}}},scores={CarrotClick=1..,Seelen=1..},team=Daemonen,tag=!Fly] at @s run scoreboard players remove @s Seelen 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:1}}},scores={CarrotClick=1..,Seelen=1..},team=Daemonen,tag=!Fly] at @s run tag @s add Fly
execute as @a[team=Daemonen,tag=Fly] run tag @s add Timer
execute as @a[team=Daemonen,tag=Fly,tag=!Timerreset] run scoreboard players set @s Ticks 0
execute as @a[team=Daemonen,tag=Fly,tag=!Timerreset] run scoreboard players set @s Secs 0
execute as @a[team=Daemonen,tag=Fly,tag=!Timerreset] run scoreboard players set @s Mins 0
execute as @a[team=Daemonen,tag=Fly,tag=!Timerreset] run tag @s add Timerreset
execute as @a[team=Daemonen,tag=Fly,scores={Ticks=0,Secs=0}] at @s run tp @s ~ ~1 ~
execute as @a[team=Daemonen,tag=Fly,scores={Ticks=0,Secs=0}] run effect give @s levitation 4 15 true
execute as @a[team=Daemonen,tag=Fly,scores={Secs=3,Ticks=0}] run effect clear @s levitation
execute as @a[team=Daemonen,tag=Fly,scores={Secs=3,Ticks=0}] run effect give @s levitation 31 255 true
execute as @a[team=Daemonen,tag=Fly,scores={Secs=33,Ticks=0}] run effect clear @s levitation
execute as @a[team=Daemonen,tag=Fly,scores={Secs=33,Ticks=0}] run effect give @s minecraft:levitation 1000 254 true
execute as @a[team=Daemonen,tag=Fly,scores={Secs=33,Ticks=0}] run tag @s remove Timer
execute as @a[team=Daemonen,tag=Fly,nbt={OnGround:1b},scores={Secs=33..}] run effect clear @s levitation
execute as @a[team=Daemonen,tag=Fly,nbt={OnGround:1b},scores={Secs=33..}] run tag @s remove Timerreset
execute as @a[team=Daemonen,tag=Fly,nbt={OnGround:1b},scores={Secs=33..}] run tag @s remove Fly
execute as @a[team=Daemonen,tag=Fly,nbt={OnGround:1b},scores={Secs=33..}] run scoreboard players set @s Ticks 0
execute as @a[team=Daemonen,tag=Fly,nbt={OnGround:1b},scores={Secs=33..}] run scoreboard players set @s Secs 0
execute as @a[team=Daemonen,tag=Fly,nbt={OnGround:1b},scores={Secs=33..}] run scoreboard players set @s Mins 0
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..LastDeath=1},team=Daemonen] at @s run team join HeiligesReich @s
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..LastDeath=2},team=Daemonen] at @s run team join Koenigreich @s
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:2}}},scores={CarrotClick=1..LastDeath=3},team=Daemonen] at @s run team join Mongolenreich @s
execute as @a[team=Daemonen] run tag @s add Daemon
execute as @a[tag=Daemon] run scoreboard players enable @s Daemon
execute as @a[tag=Daemon,scores={Daemon=1..}] run team join Daemonen @s


execute as @a[scores={Death=1..},tag=!skip] run spawnpoint @s ~ ~ ~
execute as @a[scores={Death=1..},tag=!skip] run scoreboard players set @s Secs 0
execute as @a[scores={Death=1..},tag=!skip] run scoreboard players set @s Ticks 0
execute as @a[scores={Death=1..},tag=!skip] run tag @s add Timer
execute as @a[scores={Death=1..},tag=!skip] run tag @s add Tod
execute as @a[scores={Death=1..},tag=!skip] run clear @s shield{display:{Name:"{\"text\":\"Schild aus Reinem Eisen\",\"color\":\"dark_green\"}"},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 64
execute as @a[scores={Death=1..,Ticks=0,Secs=0},tag=!skip] at @s run summon zombie ~ ~ ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["Leiche"],CustomName:"{\"text\":\"Leiche\",\"color\":\"yellow\"}"}
execute as @a[tag=Tod] at @e[type=zombie,tag=Leiche] run tp ~ ~ ~
execute as @a[tag=Tod] run gamemode spectator
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] run tag @s remove Timer
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s if entity @a[distance=..1,tag=!Tod,tag=Timer] run tag @a[distance=..1,tag=!Tod,tag=Timer] remove Timer
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s if entity @a[distance=..1,tag=!Tod,tag=Timer] run scoreboard players set @a[distance=..1,tag=!Tod,tag=Timer] Secs 0
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s if entity @a[distance=..1,tag=!Tod,tag=Timer] run scoreboard players set @a[distance=..1,tag=!Tod,tag=Timer] Ticks 0
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s run kill @e[type=zombie,tag=Leiche,distance=..1]
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s run scoreboard players set @s Mana 0
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s run xp set @s 0 levels
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s run xp set @s 0 points
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s run gamemode survival
execute as @a[tag=Tod,scores={Secs=31,Ticks=1}] at @s run tag @s add done
execute as @a[tag=Tod,scores={Secs=31,Ticks=1},team=HeiligesReich] at @e[type=armor_stand,tag=SpawnHeiligesReich] run tp ~ ~ ~
execute as @a[tag=Tod,scores={Secs=31,Ticks=1},team=Koenigreich] at @e[type=armor_stand,tag=SpawnKoenigreich] run tp ~ ~ ~
execute as @a[tag=Tod,scores={Secs=31,Ticks=1},team=Mongolenreich] at @e[type=armor_stand,tag=SpawnMongolenreich] run tp ~ ~ ~
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=..1] run tag @a[tag=!Tod,distance=..1] add Timer
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=..1,scores={Secs=3,Ticks=1}] run tag @a[tag=!Tod,distance=..1,scores={Secs=3,Ticks=1}] remove Timer
execute as @a[tag=Tod] if entity @a[tag=!Tod,distance=..1,scores={Secs=3,Ticks=1}] run tag @s remove Timer
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=..1,scores={Secs=3,Ticks=1}] run kill @e[type=zombie,distance=..1,tag=Leiche]
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=..1,scores={Secs=3,Ticks=1}] run gamemode survival
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=..1,scores={Secs=3,Ticks=1}] run tag @s add done
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=2..4] run tag @a[tag=!Tod,distance=2..4] remove Timer
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=2..4] run scoreboard players set @a[tag=!Tod,distance=2..4] Secs 0
execute as @a[tag=Tod] at @s if entity @a[tag=!Tod,distance=2..4] run scoreboard players set @a[tag=!Tod,distance=2..4] Ticks 0
execute as @a[tag=Tod,team=HeiligesReich] run scoreboard players set @a[team=Daemonen] LastDeath 1
execute as @a[tag=Tod,team=Koenigreich] run scoreboard players set @a[team=Daemonen] LastDeath 2
execute as @a[tag=Tod,team=Mongolenreich] run scoreboard players set @a[team=Daemonen] LastDeath 3
#execute as @a[scores={Death=1..},tag=!skip] run tag @s add Timer
#execute as @a[scores={Death=1..},tag=!skip] run tag @s add Tod
#execute as @a[scores={Death=1..},nbt={Health:20F}] run tag @s remove Health
#execute as @a[scores={Death=1..}] run scoreboard players reset @s Death
#execute as @a[tag=Tod] run gamemode spectator
#execute as @a[tag=Tod,team=HeiligesReich] at @e[type=armor_stand,tag=SpawnHeiligesReich] run tp ~ ~ ~
#execute as @a[tag=Tod,team=Koenigreich] at @e[type=armor_stand,tag=SpawnKoenigreich] run tp ~ ~ ~
#execute as @a[tag=Tod,team=Mongolenreich] at @e[type=armor_stand,tag=SpawnMongolenreich] run tp ~ ~ ~
#execute as @a[tag=Tod,scores={Secs=30..}] run gamemode survival
#execute as @a[tag=Tod,scores={Secs=30..}] run tag @s remove Timer
#execute as @a[tag=Tod,scores={Secs=30..}] run scoreboard players set @s Mana 0
#execute as @a[tag=Tod,scores={Secs=30..}] run xp set @s 0 levels
#execute as @a[tag=Tod,scores={Secs=30..}] run scoreboard players reset @s Ticks
#execute as @a[tag=Tod,scores={Secs=30..}] run scoreboard players reset @s Secs
#execute as @a[tag=Tod,scores={Secs=30..}] run tag @s add done
execute as @a[tag=done] run tag @s remove Tod
execute as @a[tag=done] run tag @s remove Timer
execute as @a[tag=done] run scoreboard players reset @s Mins
execute as @a[tag=done] run scoreboard players reset @s Secs
execute as @a[tag=done] run tag @s remove done
execute as @a[scores={Death=1..}] run scoreboard players reset @s Death


execute as @e[tag=Timer] run scoreboard players add @s Ticks 1
execute as @e[tag=Timer,scores={Ticks=20}] run scoreboard players add @s Secs 1
execute as @e[tag=Timer,scores={Ticks=20}] run scoreboard players set @s Ticks 0
#execute as @e[tag=Timer,scores={Secs=60}] run scoreboard players add Mins 1
execute as @e[tag=Timer,scores={Secs=60}] run tag @s add addMin
execute as @e[tag=addMin] run scoreboard players add @s Mins 1
execute as @e[tag=addMin] run scoreboard players set @s Secs 0
execute as @e[tag=addMin] run scoreboard players set @s Ticks 0
execute as @e[tag=addMin] run tag @s remove addMin

execute as @a[tag=!Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=15..},team=!HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=!Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=15..},team=!HeiligesReich] run tag @s add LVUP
execute as @a[scores={Level=3}] run tag @s add Level3
execute as @a[tag=Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=20..},team=!HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=20..},team=!HeiligesReich] run tag @s add LVUP
execute as @a[scores={Level=5}] run tag @s add Level5
execute as @a[tag=Level3,tag=Level5,tag=!Level7,tag=!Level10,scores={XP=25..},team=!HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=Level5,tag=!Level7,tag=!Level10,scores={XP=25..},team=!HeiligesReich] run tag @s add LVUP
execute as @a[scores={Level=7}] run tag @s add Level7
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=!Level10,scores={XP=30..},team=!HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=!Level10,scores={XP=30..},team=!HeiligesReich] run tag @s add LVUP
execute as @a[scores={Level=10}] run tag @s add Level10
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=Level10,tag=!Level30,scores={XP=40..},team=!HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=Level10,tag=!Level30,scores={XP=40..},team=!HeiligesReich] run tag @s add LVUP
execute as @a[tag=LVUP] run scoreboard players enable @s SkillPunkt
execute as @a[tag=LVUP] run tellraw @s ["",{"text":"Herzlichen Glückwunsch du bist nun Level "},{"score":{"name":"@s","objective":"Level"}},{"text":".\nDu kannst nun einen SkillPunkt verteilen : \n"},{"text":"Leben","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 1"}},{"text":" (Aktuell : "},{"score":{"name":"@s","objective":"Leben"}},{"text":")\n"},{"text":"Angriff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 2"}},{"text":" (Aktuell : "},{"score":{"name":"@s","objective":"Angriff"}},{"text":")\n"},{"text":"Verteidigung","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 3"}},{"text":" (Aktuell : "},{"score":{"name":"@s","objective":"Verteidigung"}},{"text":")\n"},{"text":"Abbaugeschwindkeit","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 4"}},{"text":" (Aktuell : "},{"score":{"name":"@s","objective":"Bspeed"}},{"text":")\n"},{"text":"Schmiedekünste","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 5"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"Schmiedekunst"}},{"text":")\n\n "}]
execute as @a[tag=LVUP] run xp set @s 0 levels
execute as @a[tag=LVUP] run scoreboard players enable @s SkillPunkt
execute as @a[tag=LVUP] run tag @s remove LVUP
execute as @a[scores={Level=30}] run tag @s add Level30

execute as @a[tag=!Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=15..},team=HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=!Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=15..},team=HeiligesReich] run tag @s add LVUPMana
execute as @a[scores={Level=3}] run tag @s add Level3
execute as @a[tag=Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=20..},team=HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=!Level5,tag=!Level7,tag=!Level10,scores={XP=20..},team=HeiligesReich] run tag @s add LVUPMana
execute as @a[scores={Level=5}] run tag @s add Level5
execute as @a[tag=Level3,tag=Level5,tag=!Level7,tag=!Level10,scores={XP=25..},team=HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=Level5,tag=!Level7,tag=!Level10,scores={XP=25..},team=HeiligesReich] run tag @s add LVUPMana
execute as @a[scores={Level=7}] run tag @s add Level7
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=!Level10,scores={XP=30..},team=HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=!Level10,scores={XP=30..},team=HeiligesReich] run tag @s add LVUPMana
execute as @a[scores={Level=10}] run tag @s add Level10
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=Level10,tag=!Level30,scores={XP=40..},team=HeiligesReich] run scoreboard players add @s Level 1
execute as @a[tag=Level3,tag=Level5,tag=Level7,tag=Level10,tag=!Level30,scores={XP=40..},team=HeiligesReich] run tag @s add LVUPMana
execute as @a[tag=LVUPMana] run tellraw @s ["",{"text":"Herzlichen Glückwunsch du bist nun Level "},{"score":{"name":"@s","objective":"Level"}},{"text":".\nDu kannst nun einen SkillPunkt verteilen : \n"},{"text":"Leben","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 1"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"Leben"}},{"text":")\n"},{"text":"Angriff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 2"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"Angriff"}},{"text":")\n"},{"text":"Verteidigung","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 3"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"Verteidigung"}},{"text":")\n"},{"text":"Abbaugeschwindkeit","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 4"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"Bspeed"}},{"text":")\n"},{"text":"Schmiedekünste","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 5"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"Schmiedekunst"}},{"text":")\n"},{"text":"Mana Regeneration","bold":true,"clickEvent":{"action":"run_command","value":"/trigger SkillPunkt set 6"}},{"text":" (Aktuell: "},{"score":{"name":"@s","objective":"ManaSP"}},{"text":")\n "}]
execute as @a[tag=LVUPMana] run xp set @s 0 levels
execute as @a[tag=LVUPMana] run scoreboard players enable @s SkillPunkt
execute as @a[tag=LVUPMana] run tag @s remove LVUPMana

execute as @a[scores={SkillPunkt=2}] run scoreboard players add @s Angriff 1
execute as @a[scores={SkillPunkt=3}] run scoreboard players add @s Verteidigung 1
execute as @a[scores={SkillPunkt=1}] run scoreboard players add @s Leben 1
execute as @a[scores={SkillPunkt=3}] run tag @s remove Health
execute as @a[scores={SkillPunkt=4}] run scoreboard players add @s Bspeed 1
execute as @a[scores={SkillPunkt=5}] run scoreboard players add @s Schmiedekunst 1
execute as @a[scores={SkillPunkt=6}] run scoreboard players add @s ManaSP 1
execute as @a[scores={SkillPunkt=1..}] run scoreboard players set @s SkillPunkt 0

execute as @a[scores={Leben=1},tag=!Health] run effect give @s health_boost 1000000 0 true
execute as @a[scores={Leben=2},tag=!Health] run effect give @s health_boost 1000000 1 true
execute as @a[scores={Leben=3},tag=!Health] run effect give @s health_boost 1000000 2 true
execute as @a[scores={Leben=4},tag=!Health] run effect give @s health_boost 1000000 3 true
execute as @a[scores={Leben=5},tag=!Health] run effect give @s health_boost 1000000 4 true
execute as @a[scores={Leben=6},tag=!Health] run effect give @s health_boost 1000000 5 true
execute as @a[scores={Leben=7},tag=!Health] run effect give @s health_boost 1000000 6 true
execute as @a[scores={Leben=8},tag=!Health] run effect give @s health_boost 1000000 7 true
execute as @a[scores={Leben=9},tag=!Health] run effect give @s health_boost 1000000 8 true
execute as @a[scores={Leben=10},tag=!Health] run effect give @s health_boost 1000000 9 true
execute as @a[scores={Leben=11},tag=!Health] run effect give @s health_boost 1000000 10 true
execute as @a[scores={Leben=12},tag=!Health] run effect give @s health_boost 1000000 11 true
execute as @a[scores={Leben=13},tag=!Health] run effect give @s health_boost 1000000 12 true
execute as @a[scores={Leben=14},tag=!Health] run effect give @s health_boost 1000000 13 true
execute as @a[scores={Leben=15},tag=!Health] run effect give @s health_boost 1000000 14 true
execute as @a run tag @s add Health
execute as @a[tag=Health,scores={ReJoin=1..}] run tag @s remove Health

execute as @a[scores={Verteidigung=1..}] run effect give @s resistance 3 0 true
execute as @a[scores={Verteidigung=7..}] run effect give @s resistance 3 1 true
execute as @a[scores={Verteidigung=15..}] run effect give @s resistance 3 2 true

execute as @a[scores={Angriff=1..}] run effect give @s strength 3 0 true
execute as @a[scores={Angriff=7..}] run effect give @s strength 3 1 true
execute as @a[scores={Angriff=15..}] run effect give @s strength 3 2 true

execute as @a[scores={Bspeed=1..}] run effect give @s haste 3 0 true
execute as @a[scores={Bspeed=4..}] run effect give @s haste 3 1 true
execute as @a[scores={Bspeed=8..}] run effect give @s haste 3 2 true
execute as @a[scores={Bspeed=15..}] run effect give @s haste 3 3 true

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=1..},distance=..2] run tag @s add IronChestLVEins
execute as @e[type=item,tag=IronChestLVEins,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Iron Chestplate\",\"color\":\"golden\"}",Item:{id:"minecraft:iron_chestplate",Count:1b}}
execute as @e[type=item,tag=IronChestLVEins,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}}] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=IronChestLVEins,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=1..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:leather",Count:2b}}] run tag @s add IronBootsLVEins
execute as @e[type=item,tag=IronBootsLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Iron Boots\",\"color\":\"golden\"}",Item:{id:"minecraft:iron_boots",Count:1b}}
execute as @e[type=item,tag=IronBootsLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=IronBootsLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:5b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=1..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:string",Count:2b}}] run tag @s add IronLeggingsLVEins
execute as @e[type=item,tag=IronLeggingsLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Iron Leggings\",\"color\":\"golden\"}",Item:{id:"minecraft:iron_leggings",Count:1b}}
execute as @e[type=item,tag=IronLeggingsLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=IronLeggingsLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=1..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:white_wool",Count:1b}}] run tag @s add IronHelmetLVEins
execute as @e[type=item,tag=IronHelmetLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Iron Helmet\",\"color\":\"golden\"}",Item:{id:"minecraft:iron_helmet",Count:1b}}
execute as @e[type=item,tag=IronHelmetLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=IronHelmetLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=1..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b}}] run tag @s add IronSword
execute as @e[type=item,tag=IronSword] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Iron Sword\",\"color\":\"golden\"}",Item:{id:"minecraft:iron_sword",Count:1b}}
execute as @e[type=item,tag=IronSword] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=IronSword] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:8b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=15..},distance=..2] run tag @s add diamondChestLVEins
execute as @e[type=item,tag=diamondChestLVEins,nbt={Item:{id:"minecraft:diamond",Count:8b}}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"diamond Chestplate\",\"color\":\"golden\"}",Item:{id:"minecraft:diamond_chestplate",Count:1b}}
execute as @e[type=item,tag=diamondChestLVEins,nbt={Item:{id:"minecraft:diamond",Count:8b}}] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=diamondChestLVEins,nbt={Item:{id:"minecraft:diamond",Count:8b}}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=15..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:leather",Count:2b}}] run tag @s add diamondBootsLVEins
execute as @e[type=item,tag=diamondBootsLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"diamond Boots\",\"color\":\"golden\"}",Item:{id:"minecraft:diamond_boots",Count:1b}}
execute as @e[type=item,tag=diamondBootsLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=diamondBootsLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:5b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=15..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:string",Count:2b}}] run tag @s add diamondLeggingsLVEins
execute as @e[type=item,tag=diamondLeggingsLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"diamond Leggings\",\"color\":\"golden\"}",Item:{id:"minecraft:diamond_leggings",Count:1b}}
execute as @e[type=item,tag=diamondLeggingsLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=diamondLeggingsLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=15..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:white_wool",Count:1b}}] run tag @s add diamondHelmetLVEins
execute as @e[type=item,tag=diamondHelmetLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"diamond Helmet\",\"color\":\"golden\"}",Item:{id:"minecraft:diamond_helmet",Count:1b}}
execute as @e[type=item,tag=diamondHelmetLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=diamondHelmetLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=15..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b}}] run tag @s add diamondSword
execute as @e[type=item,tag=diamondSword] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"diamond Sword\",\"color\":\"golden\"}",Item:{id:"minecraft:diamond_sword",Count:1b}}
execute as @e[type=item,tag=diamondSword] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=diamondSword] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:8b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=5..},distance=..2] run tag @s add goldenChestLVEins
execute as @e[type=item,tag=goldenChestLVEins,nbt={Item:{id:"minecraft:gold_ingot",Count:8b}}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"golden Chestplate\",\"color\":\"golden\"}",Item:{id:"minecraft:golden_chestplate",Count:1b}}
execute as @e[type=item,tag=goldenChestLVEins,nbt={Item:{id:"minecraft:gold_ingot",Count:8b}}] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=goldenChestLVEins,nbt={Item:{id:"minecraft:gold_ingot",Count:8b}}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=5..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:leather",Count:2b}}] run tag @s add goldenBootsLVEins
execute as @e[type=item,tag=goldenBootsLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"golden Boots\",\"color\":\"golden\"}",Item:{id:"minecraft:golden_boots",Count:1b}}
execute as @e[type=item,tag=goldenBootsLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=goldenBootsLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=5..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:string",Count:2b}}] run tag @s add goldenLeggingsLVEins
execute as @e[type=item,tag=goldenLeggingsLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"golden Leggings\",\"color\":\"golden\"}",Item:{id:"minecraft:golden_leggings",Count:1b}}
execute as @e[type=item,tag=goldenLeggingsLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=goldenLeggingsLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:4b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=5..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:white_wool",Count:1b}}] run tag @s add goldenHelmetLVEins
execute as @e[type=item,tag=goldenHelmetLVEins] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"golden Helmet\",\"color\":\"golden\"}",Item:{id:"minecraft:golden_helmet",Count:1b}}
execute as @e[type=item,tag=goldenHelmetLVEins] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=goldenHelmetLVEins] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=5..},distance=..2] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b}}] run tag @s add goldenSword
execute as @e[type=item,tag=goldenSword] at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"golden Sword\",\"color\":\"golden\"}",Item:{id:"minecraft:golden_sword",Count:1b}}
execute as @e[type=item,tag=goldenSword] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=goldenSword] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:8b}}] at @s if block ~ ~-1 ~ minecraft:anvil if entity @a[scores={Schmiedekunst=15..},distance=..2] run tag @s add Shield
execute as @e[type=item,tag=Shield] at @s run summon item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Schild aus Reinem Eisen\",\"color\":\"gold\"}",Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Schild aus Reinem Eisen\",\"color\":\"dark_green\"}"},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}
execute as @e[type=item,tag=Shield] at @s run summon experience_orb ~ ~ ~
execute as @e[type=item,tag=Shield] run kill @s

execute as @a[scores={ManaSP=1}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 2
execute as @a[scores={ManaSP=2}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 4
execute as @a[scores={ManaSP=3}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 5
execute as @a[scores={ManaSP=4}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 6
execute as @a[scores={ManaSP=5}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 8
execute as @a[scores={ManaSP=6}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 9
execute as @a[scores={ManaSP=7}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 10
execute as @a[scores={ManaSP=8}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 12
execute as @a[scores={ManaSP=9}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 13
execute as @a[scores={ManaSP=10}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 14
execute as @a[scores={ManaSP=11}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 16
execute as @a[scores={ManaSP=12}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 17
execute as @a[scores={ManaSP=13}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 18
execute as @a[scores={ManaSP=14}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 20
execute as @a[scores={ManaSP=15}] if entity @e[type=armor_stand,tag=SpawnHeiligesReich,scores={Secs=5}] run scoreboard players add @s Mana 22
execute as @e[type=armor_stand,tag=SpawnHeiligesReich,tag=Timer,scores={Secs=5}] run scoreboard players set @s Secs 0

execute as @a[scores={stats=1..},team=!HeiligesReich] run tellraw @s ["",{"text":"Die Stats von "},{"selector":"@s"},{"text":"\n\nAngriff : "},{"score":{"name":"@s","objective":"Angriff"}},{"text":"\nVerteidigung : "},{"score":{"name":"@s","objective":"Verteidigung"}},{"text":"\nLeben : "},{"score":{"name":"@s","objective":"Leben"}},{"text":"\nAbbaugeschwindigkeit : "},{"score":{"name":"@s","objective":"Bspeed"}},{"text":"\nSchmiedekunst : "},{"score":{"name":"@s","objective":"Schmiedekunst"}}]
execute as @a[scores={stats=1..},team=HeiligesReich] run tellraw @s ["",{"text":"Die Stats von "},{"selector":"@s"},{"text":"\n\nAngriff : "},{"score":{"name":"@s","objective":"Angriff"}},{"text":"\nVerteidigung : "},{"score":{"name":"@s","objective":"Verteidigung"}},{"text":"\nLeben : "},{"score":{"name":"@s","objective":"Leben"}},{"text":"\nAbbaugeschwindigkeit : "},{"score":{"name":"@s","objective":"Bspeed"}},{"text":"\nSchmiedekunst : "},{"score":{"name":"@s","objective":"Schmiedekunst"}},{"text":"\nMana Regeneration : "},{"score":{"name":"@s","objective":"ManaSP"}}]

effect give @a[team=Daemonen] minecraft:fire_resistance 100 255 true

scoreboard players reset @a[scores={stats=1..}] stats

scoreboard players set @a[gamemode=creative] Mana 100
scoreboard players reset @a CarrotClick
scoreboard players reset @a[scores={Daemon=1..}] Daemon
scoreboard players reset @a[scores={ReJoin=1..}] ReJoin
scoreboard players remove @a[scores={WitherKills=1..}] WitherKills 1
scoreboard players reset @a[scores={start=1..}] start
scoreboard players set @a raid 0
#execute as nottheplug_xxx run effect give @s jump_boost 1000 245
#execute as nottheplug_xxx run effect give @s slowness 1000 245
#execute as nottheplug_xxx run effect give @s resistance 1000 245
#execute as nottheplug_xxx run tellraw @s {"text":"Melde dich bitte bei Mujaca (Auf Discord : EinsFuchs#6710)"}
