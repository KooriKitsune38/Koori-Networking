## Tell its reloaded ##
tellraw @a [{"text": "[Networking] ","color": "red"},{"text": "Datapack Reloaded!","color": "gold"}]

# Scoreboards #
scoreboard objectives add k.nIDs dummy
scoreboard objectives add k.nRay dummy

#Triggers
#scoreboard objectives add Database trigger
scoreboard objectives add SendMail trigger
scoreboard objectives add SendGift trigger
scoreboard objectives add ReceiveMail trigger
scoreboard objectives add ReceiveGift trigger
scoreboard objectives add RegisterNetwork trigger
scoreboard objectives add MyID trigger

# Values
scoreboard players set .1 k.nIDs 1

# Schedule InBox Mail #
function k.network:network/database/schedule_check

# Create Network #
#execute unless data storage k.network:database Users run tellraw @a [{"text": "Database Not Created! Click ","color": "red"},{"text": "here","clickEvent": {"action": "run_command","value": "/data merge storage k.network:database {DatabaseStatus:[{Online:1b,Busy:0b}],Users:[{Id:0,Nickname:\"\",Mails:{Received:[{Empty:1b}],Sent:[{}]},Gifts:{Received:[{Empty:1b}]}}]}"},"color": "aqua","underlined": true},{"text": " to create it.","color": "red"}]
execute unless data storage k.network:database {} run data merge storage k.network:database {ItemCount:0b,DatabaseStatus:[{Online:1b,Busy:0b}],Users:[{Id:0,Nickname:"",Mails:{Received:[{Empty:1b}],Sent:[{}]},Gifts:{Received:[{Empty:1b}]}}]}