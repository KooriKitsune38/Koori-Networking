# Retrieve Data #
function koorinetwork:network/retrieve_id

# Summon Book #
summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b},NoGravity:1b,PickupDelay:5,Tags:["MailBookPlaceholder"]}

# Copy Data From Database #
data modify entity @e[type=item,sort=nearest,limit=1,distance=..1.1,tag=MailBookPlaceholder] Item.tag set from storage koorinetwork:database Users[0].Mails.Received[1]

# Remove Mail From Database #
data remove storage koorinetwork:database Users[0].Mails.Received[1]

# Tell It's Received #
tellraw @s {"text": "Mail Received!","color": "green"}

# Check if there's a mail #
#mails_available
execute if data storage koorinetwork:database Users[0].Mails.Received[1] run function koorinetwork:network/mails/receiving/more_mails_inbox
#no_mail
execute unless data storage koorinetwork:database Users[0].Mails.Received[1] run function koorinetwork:network/mails/receiving/no_mails_inbox

# Set Busy Status to Off #
schedule function koorinetwork:network/database/disable_busy_status 5t

# Sounds & Particles #
playsound minecraft:block.end_portal_frame.fill master @s ^ ^ ^ 1 2
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 2 1.6
particle enchant ~ ~.5 ~ .1 .1 .1 1 50 force
