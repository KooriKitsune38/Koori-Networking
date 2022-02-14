#> k.network:mailing/gifts/sending/send_gift

# Take Book NBT and Transfer To Database #
data modify storage k.network:database Users[0].Gifts.Received append from entity @s SelectedItem.tag

# Tell It's Sent #
tellraw @s {"text": "Gift Sent!","color": "green"}

# Remove Book #
item replace entity @s weapon.mainhand with air

# Sounds & Particles #
function k.network:sounds/send.sound