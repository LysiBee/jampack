

execute as @a[scores={skill_use=1..}] at @s if items entity @s weapon.mainhand goat_horn[minecraft:custom_data~{skill:"dash"}] run function player_motion:api/launch_looking


execute as @a if score @s skill_use matches 1.. run scoreboard players set @s skill_use 0