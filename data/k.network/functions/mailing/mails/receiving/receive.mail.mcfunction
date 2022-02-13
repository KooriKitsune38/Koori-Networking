#> k.network:mailing/mails/receiving/receive.mail

# Summon Book #
summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBookPlaceholder"]}

# Copy Data From Database #
data modify entity @e[type=item,sort=nearest,limit=1,distance=..1.1,tag=MailBookPlaceholder] Item.tag set from storage k.network:database Users[0].Mails.Received[1]

# Remove Mail From Database #
data remove storage k.network:database Users[0].Mails.Received[1]

# Tell It's Received #
tellraw @s {"text": "Mail Received!","color": "green"}

# Check if there's a mail #
#mails_available
execute if data storage k.network:database Users[0].Mails.Received[1] run function k.network:mailing/mails/feedback/more.mails
#no_mail
execute unless data storage k.network:database Users[0].Mails.Received[1] run function k.network:mailing/mails/feedback/empty.mails

# Sounds & Particles #
function k.network:sounds/receive.sound
