#> k.network:mailing/gifts/receiving/t.receivegift

scoreboard players reset @s ReceiveGift

# Retrieve Data
function k.network:network/database/cycles/cur.id/check.id

# Errors #
#no_gifts
execute unless data storage k.network:database Users[0].Gifts.Received[1] run function k.network:mailing/gifts/feedback/no.gifts

# Receive if requirements #
execute if data storage k.network:database Users[0].Gifts.Received[1] run function k.network:mailing/gifts/receiving/receive.gift