#> k.network:mailing/gifts/receiving/receive.gift

# Summon Box #
summon item ~ ~ ~ {Item:{id:"minecraft:white_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}

# Copy Data From Database #
data modify entity @e[type=item,sort=nearest,limit=1,distance=..1.1,tag=MailBoxPlaceholder] Item.tag set from storage k.network:database Users[0].Gifts.Received[1]

# Remove Mail From Database #
data remove storage k.network:database Users[0].Gifts.Received[1]

# Tell It's Received #
tellraw @s {"text": "Gift Received!","color": "green"}

# Check if there's a gift #
#gift_available
execute if data storage k.network:database Users[0].Gifts.Received[1] run function k.network:mailing/gifts/feedback/more.gifts
#no_gift
execute unless data storage k.network:database Users[0].Gifts.Received[1] run function k.network:mailing/gifts/feedback/empty.gifts

# Sounds & Particles #
function k.network:sounds/receive.sound