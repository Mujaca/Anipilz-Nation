execute as @a[tag=!BlockRaid,nbt={SelectedItem:{id:"minecraft:gold_block"}}] at @s if block ~-1 ~-1 ~-1 minecraft:nether_bricks if block ~1 ~-1 ~1 minecraft:nether_bricks if block ~-1 ~-1 ~1 minecraft:nether_bricks if block ~1 ~-1 ~-1 minecraft:nether_bricks if block ~1 ~-1 ~ minecraft:iron_block if block ~-1 ~-1 ~ iron_block if block ~ ~-1 ~-1 iron_block if block ~ ~-1 ~1 iron_block if block ~ ~-1 ~ diamond_block run tag @s add startRaidWither
execute as @a[tag=startRaidWither] run tag @a[tag=!startRaidWither] add BlockRaid
execute as @a[tag=startRaidWither] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air
execute as @a[tag=startRaidWither] at @s run tp @s ~ ~200 ~
execute as @a[tag=startRaidWither] run effect give @s levitation 10000 255
execute as @a[tag=startRaidWither] run effect give @s blindness 10000 255
execute as @a[tag=startRaidWither] run effect give @s night_vision 10000 255
execute as @a[tag=startRaidWither] run bossbar set minecraft:wait players @s
execute as @a[tag=startRaidWither] as @a[tag=!startRaidWither] run tag @s add waiting
execute as @a[tag=startRaidWither] as @a[tag=!startRaidWither] run scoreboard players enable @s raid
execute as @a[tag=startRaidWither] run scoreboard players enable @s start
execute as @a[tag=startRaidWither] run tag @s add Raid
execute as @a[tag=startRaidWither] run tag @s remove startRaidWither
execute as @a[tag=waiting,scores={raid=1..}] run effect give @s levitation 10000 255
execute as @a[tag=waiting,scores={raid=1..}] run effect give @s blindness 10000 255
execute as @a[tag=waiting,scores={raid=1..}] run effect give @s night_vision 10000 255
execute as @a[tag=waiting,scores={raid=1..}] run tp @s ~ ~200 ~
execute as @a[tag=waiting,scores={raid=1..}] run bossbar set minecraft:wait players @s
execute as @a[tag=waiting,scores={raid=1..}] run tag @s add Raid
execute as @a[tag=waiting,scores={raid=1..}] run tag @s remove waiting

execute as @a[scores={start=1..}] run tag @a remove waiting
execute as @a[scores={start=1..}] as @a[tag=Raid] run gamemode adventure
execute as @a[scores={start=1..}] at @e[type=armor_stand,tag=RaidSpawn] as @a[tag=Raid] run tp ~ ~ ~
execute as @a[scores={start=1..}] at @e[type=armor_stand,tag=RaidBossSpawn] run summon wither ~ ~ ~ {Health:600f,Tags:["RaidBoss"],Attributes:[{Name:generic.maxHealth,Base:600},{Name:generic.knockbackResistance,Base:1},{Name:generic.attackDamage,Base:10},{Name:generic.armor,Base:15}]}
execute as @a[scores={start=1..}] run effect clear @a[tag=Raid] blindness
execute as @a[scores={start=1..}] run effect clear @a[tag=Raid] levitation
execute as @a[scores={start=1..}] run bossbar set minecraft:wait players @a[tag=asdjansdjn]

execute as @a[tag=Raid,scores={WitherKills=1..}] run give @a[tag=Raid] nether_star 1
execute as @a[tag=Raid,scores={WitherKills=1..}] run give @r[tag=Raid] spawner 1
execute as @a[tag=Raid,scores={WitherKills=1..}] as @a[tag=Raid] run gamemode survival
execute as @a[tag=Raid,scores={WitherKills=1..}] run effect clear @a[tag=Raid] night_vision
execute as @a[tag=Raid,scores={WitherKills=1..}] run tag @a remove BlockRaid
execute as @a[tag=Raid,scores={WitherKills=1..}] run xp add @a[tag=Raid] 40 levels
execute as @a[tag=Raid,scores={WitherKills=1..}] at @s run tp @a[tag=Raid] -566.53 71.00 -689.37
execute as @a[tag=Raid,scores={WitherKills=1..}] run tag @a[tag=Raid] remove Raid
