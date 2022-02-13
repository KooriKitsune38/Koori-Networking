data modify entity @s PickupDelay set value 9999
data modify entity @s Age set value 9999
data modify entity @s NoGravity set value 1b
tag @s add UserPlaceholder

# Set Nick 
data modify entity @s Item.tag.Users[0].Nickname set from entity @s Item.tag.SkullOwner.Name