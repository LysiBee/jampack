title @a actionbar {"text":"A survivor has fallen!","color":"red"}

playsound minecraft:entity.wither.hurt master @a

say @s died

gamemode spectator @s

tag @s remove alive

scoreboard players set @s deaths 0

team leave @a