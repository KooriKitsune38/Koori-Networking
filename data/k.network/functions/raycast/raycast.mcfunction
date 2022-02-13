# Add 1 to score Ray #
scoreboard players add @s k.nRay 1

# Signs Commands #
execute align xyz if block ~.5 ~.5 ~.5 #signs run function k.network:raycast/sign.check

# Repeat Ray #
execute if score @s k.nRay matches ..10 positioned ^ ^ ^.5 if block ~ ~ ~ #k.network:raycast_exceptions run function k.network:raycast/raycast