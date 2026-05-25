execute as @a[scores={jump=1..}] at @s run summon wind_charge ~ ~-0.5 ~ {life:1}


execute as @a if score @s skill_use matches 2.. run scoreboard players set @s jump 0