# Set Database Status To Busy #
data modify storage koorinetwork:database DatabaseStatus[0].Busy set value 1b

# Block Player #
effect give @s slowness 1 255 true
effect give @s slow_falling 1 255 true

# Summon Item #
loot spawn ~ ~ ~ loot koorinetwork:registration_head
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},sort=nearest,limit=1,distance=..1.2] run function koorinetwork:network/registration_head_stuff
#summon item ~ ~ ~ {NoGravity:1b,Age:9999,PickupDelay:9999,Tags:["UserPlaceholder"],Item:{id:"minecraft:paper",Count:1b,tag:{Users:[{Id:0,Nickname:"",Mails:[{Received:[{Empty:1b}]}]}]}}}

# Set Nick #
#Inside Above Function ^
#data modify entity @e[type=item,tag=UserPlaceholder,sort=nearest,limit=1,distance=..1.2] Item.tag.Users[0].Nickname set from entity @s SelectedItem.tag.title

# Set ID #
execute store result entity @e[type=item,tag=UserPlaceholder,sort=nearest,limit=1,distance=..1.2] Item.tag.Users[0].Id int 1 run scoreboard players get @s IdSystem

# Append data #
data modify storage koorinetwork:database Users append from entity @e[type=item,tag=UserPlaceholder,sort=nearest,limit=1,distance=..1.2] Item.tag.Users[0]

# Tag Player and reset scoreboard #
tag @s add RegisteredToNetwork
scoreboard players reset @s RegisterNetwork

# Remove Paper #
#replaceitem entity @s weapon.mainhand air

# Tell it's done #
tellraw @s {"text":"Registration Completed!","color": "green"}

# Sound #
playsound minecraft:block.note_block.iron_xylophone ambient @a ~ ~ ~ 1 2
playsound minecraft:block.portal.travel ambient @a ~ ~ ~ .15 1.7
execute anchored eyes run particle composter ^ ^ ^.2 .2 .2 .2 1 20 force

# Set Busy Status to Off #
schedule function koorinetwork:network/database/disable_busy_status 5t