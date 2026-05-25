
execute unless entity @a[team=killer] run team add killer
execute unless entity @a[team=survivor] run team add survivor
team modify killer color red
team modify survivor color lime

say guh

team leave @a

team join killer @r

team join survivor @a[team=]