#> k.network:mailing/gifts/receiving/sort.color

data modify storage k.network:database ShulkerType set from storage k.network:database Users[0].Gifts.Received[1].id

execute if data storage k.network:database {ShulkerType:"minecraft:shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:red_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:red_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:blue_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:blue_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:cyan_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:gray_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:gray_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:lime_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:lime_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:pink_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:pink_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:black_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:black_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:brown_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:brown_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:green_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:green_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:white_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:white_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:orange_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:orange_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:purple_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:purple_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:magenta_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:yellow_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:light_blue_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}
execute if data storage k.network:database {ShulkerType:"minecraft:light_gray_shulker_box"} run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_shulker_box",Count:1b},NoGravity:1b,PickupDelay:2,Tags:["MailBoxPlaceholder"]}