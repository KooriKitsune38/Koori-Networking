#> k.network:network/reg/reg.head

data modify entity @s PickupDelay set value 9999
data modify entity @s Age set value 9999
data modify entity @s NoGravity set value 1b

# Set Nick 
data modify entity @s Item.tag.Users[0].Nickname set from entity @s Item.tag.SkullOwner.Name

# Set ID
execute store result entity @s Item.tag.Users[0].Id int 1 run scoreboard players get @p[tag=.temp] k.nIDs 

# Append data
data modify storage k.network:database Users append from entity @s Item.tag.Users[0]