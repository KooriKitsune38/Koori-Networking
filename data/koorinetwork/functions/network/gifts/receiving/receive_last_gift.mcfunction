# Retrieve Data #
function koorinetwork:network/retrieve_id

# Summon Box #
summon item ~ ~ ~ {Item:{id:"minecraft:shulker_box",Count:1b},NoGravity:1b,PickupDelay:5,Tags:["MailBoxPlaceholder"]}

# Copy Data From Database #
data modify entity @e[type=item,sort=nearest,limit=1,distance=..1.1,tag=MailBoxPlaceholder] Item.tag set from storage koorinetwork:database Users[0].Gifts.Received[1]

# Remove Mail From Database #
data remove storage koorinetwork:database Users[0].Gifts.Received[1]

# Tell It's Received #
tellraw @s {"text": "Gift Received!","color": "green"}

# Check if there's a gift #
#gift_available
execute if data storage koorinetwork:database Users[0].Gifts.Received[1] run function koorinetwork:network/gifts/receiving/more_gifts_inbox
#no_gift
execute unless data storage koorinetwork:database Users[0].Gifts.Received[1] run function koorinetwork:network/gifts/receiving/no_gifts_inbox

# Set Busy Status to Off #
schedule function koorinetwork:network/database/disable_busy_status 5t

# Sounds & Particles #
playsound minecraft:block.end_portal_frame.fill master @s ^ ^ ^ 1 2
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 2 1.6
particle enchant ~ ~.5 ~ .1 .1 .1 1 50 force
