# If network is Online #
execute if data storage k.network:database DatabaseStatus[{Online:1b}] run function k.network:triggers/triggers
execute unless data storage k.network:database DatabaseStatus[{Online:1b}] unless data storage k.network:database DatabaseStatus[{Busy:0b}] run function k.network:triggers/disable.all.triggers
execute if entity @s[tag=!k.nRegistered] run function k.network:triggers/disable_triggers

# Sings Raycasts #
execute anchored eyes if predicate k.network:is_sneaking run function k.network:raycast/raycast
scoreboard players reset @s k.nRay