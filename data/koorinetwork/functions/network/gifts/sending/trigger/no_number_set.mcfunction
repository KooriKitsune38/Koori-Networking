tellraw @s [{"text": "Please enter a valid ID with: ","color": "red"},{"text": "/trigger SendGift set ","color": "gold"},{"text": "#ReceiverID#","color": "aqua"}]
scoreboard players reset !TriggeredId IdSystem

function koorinetwork:error_sound