execute as @a at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run scoreboard players add @s dj 1



execute as @a[scores={dj=1..}] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run effect give @s minecraft:levitation 1 20 true


execute as @a if score @s dj matches 1.. run scoreboard players set @s jump 0
execute as @a if score @s dj matches 0 run effect clear @s levitation