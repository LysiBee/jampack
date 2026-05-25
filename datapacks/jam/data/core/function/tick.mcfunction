
execute if score .gamestate game.main matches 1 run function core:hub/store/store
execute as @e[type=item,tag=core.orb] at @s if entity @p[distance=..1,tag=inloc] run function core:orb/logic
# DEBUG
# summon particle on every marker to see where they are
execute as @e[type=marker] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0
function core:abilities/abilityuse


execute unless entity @a[team=killer] run team add killer
execute unless entity @a[team=survivor] run team add survivor
team modify killer color red
team modify survivor color green

execute if score $state game.main matches 1 run function core:game/timer/timer_update
execute if score $state game.main matches 1 run function core:game/timer/actionbar
execute if score $state game.main matches 1 run function core:game/timer/check

execute as @a[team=survivor,scores={deaths=1..}] run function core:game/survivor_death

execute as @a[team=killer,scores={deaths=1..}] run function core:game/killer_death