# Take Book NBT and Transfer To Database #
data modify storage koorinetwork:database Users[0].Gifts.Received append from entity @s SelectedItem.tag

# Tell It's Sent #
tellraw @s {"text": "Gift Sent!","color": "green"}

# Remove Book #
replaceitem entity @s weapon.mainhand air

# Sounds & Particles #
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 2 1.6
execute anchored eyes run particle cloud ^ ^ ^.5 .2 .2 .2 .01 10 force
particle portal ~ ~.5 ~ .1 .1 .1 1 50 force