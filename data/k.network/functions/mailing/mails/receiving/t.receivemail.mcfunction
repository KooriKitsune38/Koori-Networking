#> k.network:mailing/mails/receiving/t.receivemail

scoreboard players reset @s ReceiveMail

# Retrieve Data
function k.network:network/database/cycles/cur.id/check.id

# Errors #
#no_mails
execute unless data storage k.network:database Users[0].Mails.Received[1] run function k.network:mailing/mails/feedback/no.mails

# Receive if requirements #
execute if data storage k.network:database Users[0].Mails.Received[1] run function k.network:mailing/mails/receiving/receive.mail