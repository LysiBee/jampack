execute as @a if score @s dj matches 2.. run scoreboard players set @s dj 0

execute as @a if score @s dj matches 2.. run scoreboard players set @s jump 0


execute as @a[scores={jump=2..}] run execute as @a at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run scoreboard players add @s dj 1



execute as @a[scores={jump=2..}] run execute as @a[scores={dj=2..}] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run summon wind_charge ~ ~ ~ {Motion:[0.0,0.1,0.0]}




execute as @a if score @s dj matches 0 run effect clear @s levitation