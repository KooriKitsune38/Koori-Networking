#> k.network:mailing/gifts/sending/t.sendgift

# Errors #
#no_book_in_hand
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run function k.network:mailing/gifts/feedback/no.shulker
#set_a_number
execute if score @s SendGift matches 0..1 if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run function k.network:mailing/invalid.id
#sending_to_self
#execute if score @s SendGift = @s k.nIDs if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run function k.network:mailing/gifts/sending/trigger/sending_to_self

# Send Mail #
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] unless score @s SendGift matches 0..1 run function k.network:mailing/gifts/sending/sending_requirements
#execute unless score @s SendGift = @s k.nIDs if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] unless score @s SendGift matches 1 run function k.network:mailing/gifts/sending/sending_requirements

# Reset Id #
scoreboard players reset @s SendGift