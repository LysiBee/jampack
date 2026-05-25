# lock game so it only triggers once
scoreboard players set $state game.main 2

# message
title @a title {"text":"KILLERS WIN","color":"red"}
title @a subtitle {"text":"All survivors are eliminated","color":"dark_gray"}

# sound + effect
playsound minecraft:entity.ender_dragon.growl master @a
effect give @a minecraft:slowness 3 1 true

# optional cleanup / end state
gamemode spectator @a[team=survivor]
gamemode survival @a[team=killer]

# optional reset timer
scoreboard players set $time timer 0
scoreboard players set $tick timer 0

team leave @a