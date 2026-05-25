# 
execute if score .gamestate game.main matches 1 run function core:hub/store/store
execute as @e[type=item,tag=core.orb] at @s if entity @p[distance=..1,tag=inloc] run function core:orb/logic
# DEBUG
# summon particle on every marker to see where they are
execute as @e[type=marker] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0
function core:abilities/abilityuse

