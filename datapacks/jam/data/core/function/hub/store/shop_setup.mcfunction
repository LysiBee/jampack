# 66 -59 13 item 1
# 66 -59 11 item 2
# summon markers with differens shop item tag at thoes coords
scoreboard players set .shopstate shop.main 1
kill @e[type=marker,tag=item1]
kill @e[type=marker,tag=item2]

kill @e[type=minecraft:text_display,tag=item1]
kill @e[type=minecraft:text_display,tag=item2]

kill @e[type=interaction,tag=item1]
kill @e[type=interaction,tag=item2]
# marker
summon marker 66 -59 11 {Silent:1b,Rotation:[-90F,0F],Tags:["item1"]}
summon marker 66 -59 13 {Silent:1b,Rotation:[-90F,0F],Tags:["item2"]}
# text display
summon text_display 66 -59 11 {billboard:"vertical",Tags:["item1"],text:[{"sprite":"block/red_sand"},{"text":"\nname"},{"text":"\ninfotext"}]}
summon text_display 66 -59 13 {billboard:"vertical",Tags:["item2"],text:[{"sprite":"block/sand"},{"text":"\nname"},{"text":"\ninfotext"}]}
# interactions
summon interaction 66 -59 11 {width:1.1f,height:1.1f,response:1b,Tags:["item1"]}
summon interaction 66 -59 13 {width:1.1f,height:1.1f,response:1b,Tags:["item2"]}
#
execute if score .roundcount game.main matches 1.. run scoreboard players set .entityoffer shop.main 2
execute if score .roundcount game.main matches 0 run return run scoreboard players set .entityoffer shop.main 1
scoreboard players add .offercount shop.main 2
scoreboard players operation .buffoffer shop.main = .offercount shop.main
scoreboard players operation .buffoffer shop.main -= .entityoffer shop.main
