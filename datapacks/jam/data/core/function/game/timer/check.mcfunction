execute if score $state game.main matches 1 if score $time timer matches 300.. run function core:game/survivors_win


execute if score $state game.main matches 1 unless entity @a[team=survivor,gamemode=!spectator] run function core:game/killer_win