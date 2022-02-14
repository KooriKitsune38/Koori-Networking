#> k.network:sounds/send.sound

playsound entity.bat.takeoff master @s ~ ~ ~ .05 .7
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 2 1 1
execute anchored eyes run particle cloud ^ ^ ^.5 .2 .2 .2 .01 10 force
particle enchant ~ ~.5 ~ .1 .1 .1 1 50 force