# offer for item 1
scoreboard players set .current_offer shop.main 1
execute if score .offer_1 shop.main matches 1 run function core:hub/store/offers/buff1
execute if score .offer_1 shop.main matches 2 run function core:hub/store/offers/buff2
execute if score .offer_1 shop.main matches 3 run function core:hub/store/offers/buff3
# offer for item 2
scoreboard players set .current_offer shop.main 2
execute if score .offer_2 shop.main matches 1 run function core:hub/store/offers/buff1
execute if score .offer_2 shop.main matches 2 run function core:hub/store/offers/buff2
execute if score .offer_2 shop.main matches 3 run function core:hub/store/offers/buff3





# logic to generate new offers untill 0 offers left......... or if no money left
scoreboard players remove .offercount shop.main 1
scoreboard players set .shopstate shop.main 1
#execute unless score .offercount shop.main matches 0 run function core:hub/store/offer_generate
#execute if score .offercount shop.main matches 0 run function core:hub/store/end_shopping