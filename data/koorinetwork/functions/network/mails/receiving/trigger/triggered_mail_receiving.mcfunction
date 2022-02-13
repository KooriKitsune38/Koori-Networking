scoreboard players reset @s ReceiveMail

# Errors #
#no_mails
execute unless data storage koorinetwork:database Users[0].Mails.Received[1] run function koorinetwork:network/mails/receiving/trigger/no_mails_error
#busy_database
execute if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error

# Receive if requirements #
execute unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] if data storage koorinetwork:database Users[0].Mails.Received[1] run function koorinetwork:network/mails/receiving/receive_last_mail