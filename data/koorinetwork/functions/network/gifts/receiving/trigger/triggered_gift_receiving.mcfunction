scoreboard players reset @s ReceiveGift

# Errors #
#no_mails
execute unless data storage koorinetwork:database Users[0].Gifts.Received[1] run function koorinetwork:network/gifts/receiving/trigger/no_gifts_error
#busy_database
execute if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error

# Receive if requirements #
execute unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] if data storage koorinetwork:database Users[0].Gifts.Received[1] run function koorinetwork:network/gifts/receiving/receive_last_gift