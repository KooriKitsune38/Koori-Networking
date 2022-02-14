#> k.network:mailing/gifts/sending/t.sendgift

# Errors #
#no_book_in_hand
execute unless predicate k.network:shulker.boxes run function k.network:mailing/gifts/feedback/no.shulker
#set_a_number
execute if score @s SendGift matches 0..1 if predicate k.network:shulker.boxes run function k.network:mailing/invalid.id
#sending_to_self
#execute if score @s SendGift = @s k.nIDs if predicate k.network:shulker.boxes run function k.network:mailing/gifts/sending/trigger/sending_to_self

# Send Mail #
execute if predicate k.network:shulker.boxes unless score @s SendGift matches 0..1 run function k.network:mailing/gifts/sending/sending_requirements
#execute unless score @s SendGift = @s k.nIDs if predicate k.network:shulker.boxes unless score @s SendGift matches 1 run function k.network:mailing/gifts/sending/sending_requirements

# Reset Id #
scoreboard players reset @s SendGift