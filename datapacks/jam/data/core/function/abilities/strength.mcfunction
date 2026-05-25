

execute as @a[scores={skill_use=1..}] at @s if items entity @s weapon.mainhand goat_horn[minecraft:custom_data~{skill:"strength"}] run effect give @a[team=killer] strength 10 2


execute as @a if score @s skill_use matches 1.. run scoreboard players set @s skill_use 0