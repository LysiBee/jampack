execute as @a[scores={jump=..2}] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run effect give @s levitation 1 10


execute as @a if score @s jump matches 2.. run scoreboard players set @s jump 0
execute as @a if score @s jump matches 2.. run effect clear @s levitation