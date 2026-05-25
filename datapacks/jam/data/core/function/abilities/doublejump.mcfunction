execute as @a[scores={jump=3..}] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}} run effect give @s minecraft:levitation 1 20 true


execute as @a if score @s jump matches 1.. run scoreboard players set @s jump 0
execute as @a if score @s jump matches 0 run effect clear @s levitation