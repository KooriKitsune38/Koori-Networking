#> k.network:network/reg/reg.trigger

scoreboard players reset @s RegisterNetwork

# Errors
execute unless score @s k.nIDs matches -2147483648..2147483647 run function k.network:network/database/feedback/no.id
#> already_registered
execute if entity @s[tag=k.nRegistered] run function k.network:network/database/feedback/already.reg

# Register if req met
execute unless entity @s[tag=k.nRegistered] if score @s k.nIDs matches -2147483648..2147483647 run function k.network:network/reg/new.user