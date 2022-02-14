#> k.network:sounds/send.sound

playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 1 1
playsound entity.bat.takeoff master @s ~ ~ ~ .5 .5
execute anchored eyes run particle cloud ^ ^ ^.5 .2 .2 .2 .01 10 force
particle portal ~ ~.5 ~ .1 .1 .1 1 50 force