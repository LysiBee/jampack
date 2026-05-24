execute unless score .shopstate shop.main matches 1 run scoreboard players set .shopstate shop.main 1
#
execute if score .shopstate shop.main matches 1 store result score .offer_1 shop.main run random value 1..3
# scuffed way to get a random 1 or 2 or 3 for offer 2 based on offer 1
execute if score .shopstate shop.main matches 1 if score .offer_1 shop.main matches 1 store result score .offer_2 shop.main run random value 2..3
execute if score .shopstate shop.main matches 1 if score .offer_1 shop.main matches 2 run scoreboard players set .offer_2 shop.main 1
execute if score .shopstate shop.main matches 1 if score .offer_1 shop.main matches 2 if predicate {condition:"minecraft:random_chance",chance:0.5} run scoreboard players set .offer_2 shop.main 3
execute if score .shopstate shop.main matches 1 if score .offer_1 shop.main matches 3 store result score .offer_2 shop.main run random value 1..2
# run entity\buff offer function to generate current offer
# based on round count, offer count
execute if score .shopstate shop.main matches 1 run scoreboard players set .shopstate shop.main 2
# oonly on round 0 there are no buff offers, so only generate entity offer
execute if score .offercount shop.main matches 1 if score .roundcount game.main matches 0 run return run function core:hub/store/entity_offer
#
#
execute if score .entityoffer shop.main matches 1.. run return run function core:hub/store/entity_offer
execute if score .buffoffer shop.main matches 1.. run return run function core:hub/store/buff_offer