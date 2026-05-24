#
#
#
scoreboard objectives add game.main dummy
scoreboard objectives add shop.main dummy
scoreboard objectives add player.state dummy
# shop.main
# 66 -59 13 item 1
# 66 -59 11 item 2
scoreboard players set .shopstate shop.main 0
scoreboard players set .offercount shop.main 1
# game.main
scoreboard players set .corestab game.main 10000
scoreboard players set .moneycount game.main 5000
scoreboard players set .orbcount game.main 0
# state 0 = hub, 1 = shopping, 2 = waiting players, 3 = in round, 4 = find escape, 5 = end round, 6 = lost
scoreboard players set .gamestate game.main 0
scoreboard players set .roundcount game.main 0

# player.state
scoreboard players set @a player.state 0
