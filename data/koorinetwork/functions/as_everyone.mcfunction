# If network is Online #
execute if data storage koorinetwork:database DatabaseStatus[{Online:1b}] run function koorinetwork:network/triggers/triggers
execute if data storage koorinetwork:database DatabaseStatus[{Online:0b}] run function koorinetwork:network/triggers/disable_triggers

# Sings Raycasts #
execute anchored eyes if predicate koorinetwork:is_sneaking run function koorinetwork:raycast/raycast
scoreboard players reset @s NetworkingRay