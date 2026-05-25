say guh
clear @a

team leave @a

team join killer @r
team join survivor @a[team=]

give @a[team=killer] iron_sword

scoreboard players set $state game.main 1

spreadplayers 166 -52.99 3 5 false @a[team=killer]

give @a[team=survivor] goat_horn[custom_name=[{"text":"Dash","italic":false}],custom_data={skill:"dash"}]
give @a[team=survivor] goat_horn[custom_name=[{"text":"Speed","italic":false}],custom_data={skill:"speed"}]
give @a[team=killer] goat_horn[custom_name=[{"text":"Blindness","italic":false}],custom_data={skill:"blindness"}]
give @a[team=killer] goat_horn[custom_name=[{"text":"Strength","italic":false}],custom_data={skill:"strength"}]