execute if score .offer_1 shop.main matches 1 run scoreboard players set .price_1 shop.main 25
execute if score .offer_1 shop.main matches 2 run scoreboard players set .price_1 shop.main 50
execute if score .offer_1 shop.main matches 3 run scoreboard players set .price_1 shop.main 75
#
execute if score .offer_2 shop.main matches 1 run scoreboard players set .price_2 shop.main 35
execute if score .offer_2 shop.main matches 2 run scoreboard players set .price_2 shop.main 60
execute if score .offer_2 shop.main matches 3 run scoreboard players set .price_2 shop.main 85
# multiply price by round count +1 to scale up prices each round
scoreboard players operation .price_1 shop.main *= .roundcount game.main
scoreboard players operation .price_2 shop.main *= .roundcount game.main
# calculate min price of any offer to compare with player money
scoreboard players operation .min shop.main = .price_1 shop.main
scoreboard players operation .min shop.main < .price_2 shop.main
# if player money is less than min price, end shopping
execute if score .moneycount game.main < .min shop.main run return run function core:hub/store/end_shopping
execute unless score .offercount shop.main matches 0 if score .buffoffer shop.main matches 1.. run return run function core:hub/store/buff_offer
# extra step if checks fail
function core:hub/store/end_shopping