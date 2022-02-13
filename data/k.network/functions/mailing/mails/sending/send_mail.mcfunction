#> k.network:mailing/mails/sending/send_mail

# Take Book NBT and Transfer To Database #
data modify storage k.network:database Users[0].Mails.Received append from entity @s SelectedItem.tag

# Tell It's Sent #
tellraw @s {"text": "Mail Sent!","color": "green"}

# Remove Book #
item replace entity @s weapon.mainhand with air

# Sounds & Particles #
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 2 1
execute anchored eyes run particle cloud ^ ^ ^.5 .2 .2 .2 .01 10 force
particle enchant ~ ~.5 ~ .1 .1 .1 1 50 force