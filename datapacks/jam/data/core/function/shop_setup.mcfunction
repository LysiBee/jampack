# 66 -59 13 item 1
# 66 -59 11 item 2
# summon markers with differens shop item tag at thoes coords
kill @e[type=marker,tag=item1]
kill @e[type=marker,tag=item2]

kill @e[type=minecraft:text_display,tag=item1]
kill @e[type=minecraft:text_display,tag=item2]
#
summon marker 66 -59 11 {Silent:1b,Rotation:[-90F,0F],Tags:["item1"]}
summon marker 66 -59 13 {Silent:1b,Rotation:[-90F,0F],Tags:["item2"]}
#
summon text_display 66 -59 11 {billboard:"vertical",Tags:["item1"],text:[{"sprite":"block/red_sand"},{"text":"\nname"},{"text":"\ninfotext"}]}
summon text_display 66 -59 13 {billboard:"vertical",Tags:["item2"],text:[{"sprite":"block/sand"},{"text":"\nname"},{"text":"\ninfotext"}]}