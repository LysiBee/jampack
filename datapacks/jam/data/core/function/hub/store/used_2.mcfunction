execute as @e[type=interaction] run data remove entity @s {Interaction:{}}
say used 2
#

#
execute if score .entityoffer shop.main matches 0 if score .offercount shop.main matches 1.. run return run function core:hub/store/check_money
execute unless score .offercount shop.main matches 0 run function core:hub/store/offer_generate
execute if score .offercount shop.main matches 0 run function core:hub/store/end_shopping