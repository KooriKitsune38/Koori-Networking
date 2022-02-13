#> k.network:network/database/feedback/check.availability

# Check if there's a mail #
execute if data storage k.network:database Users[0].Mails.Received[1] as @a if score @s k.nIDs = .curID k.nIDs run function k.network:mailing/mails/feedback/has.mails
# Check if there's a gift #
execute if data storage k.network:database Users[0].Gifts.Received[1] as @a if score @s k.nIDs = .curID k.nIDs run function k.network:mailing/gifts/feedback/has.gifts