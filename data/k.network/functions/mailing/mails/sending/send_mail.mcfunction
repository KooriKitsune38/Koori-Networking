#> k.network:mailing/mails/sending/send_mail

# Take Book NBT and Transfer To Database #
data modify storage k.network:database Users[0].Mails.Received append from entity @s SelectedItem.tag

# Decrease books count
item modify entity @s weapon.mainhand k.network:book.count

# Tell It's Sent #
tellraw @s {"text": "Mail Sent!","color": "green"}

# Sounds & Particles #
function k.network:sounds/send.sound