# only run timer if at least 1 survivor is alive
execute if entity @a[team=survivor,gamemode=!spectator] run scoreboard players add $tick timer 1

execute if score $tick timer matches 20.. run function game:timer/second