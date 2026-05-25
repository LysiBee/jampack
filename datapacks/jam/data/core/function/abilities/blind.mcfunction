

effect give @a[team=killer] strength 2 10execute as @a[scores={skill_use=1..}] at @s if items entity @s weapon.mainhand goat_horn[minecraft:custom_data~{skill:"blindness"}] run effect give @a[team=survivor] blindness 2 5effect give @a[team=killer] strength 2 10execute as @a[scores={skill_use=1..}] at @s if items entity @s weapon.mainhand goat_horn[minecraft:custom_data~{skill:"blindness"}] run effect give @a[team=survivor] blindness 5 5
effect give @a[team=killer] strength 2 10execute as @a[scores={skill_use=1..}] at @s if items entity @s weapon.mainhand goat_horn[minecraft:custom_data~{skill:"blindness"}] run effect give @a[team=survivor] blindness 2 5effect give @a[team=killer] strength 2 10execute as @a[scores={skill_use=1..}] at @s if items entity @s weapon.mainhand goat_horn[minecraft:custom_data~{skill:"blindness"}] run effect give @a[team=survivor] darkness 5 5

execute as @a if score @s skill_use matches 1.. run scoreboard players set @s skill_use 0