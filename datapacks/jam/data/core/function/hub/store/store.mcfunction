#
execute as @e[type=interaction,tag=item1] if data entity @s {Interaction:{}} run return run function core:hub/store/used_1
execute as @e[type=interaction,tag=item2] if data entity @s {Interaction:{}} run return run function core:hub/store/used_2