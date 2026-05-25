say guh
clear @a

team leave @a

team join killer @r
team join survivor @a[team=]

give @a[team=killer] iron_sword

scoreboard players set $state game.main 1

spreadplayers 166 -52.99 3 5 false @a

give @a goat_horn[custom_name=[{"text":"Dash","italic":false}],custom_data={skill:"dash"}]
give @a goat_horn[custom_name=[{"text":"Speed","italic":false}],custom_data={skill:"speed"}]

effect give @a[team=killer] saturation infinite 10

gamemode adventure @a

scoreboard players set $time timer 0
scoreboard players set $tick timer 0
