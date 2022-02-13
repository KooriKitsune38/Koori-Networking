# Mail System #
#sending
scoreboard players enable @s SendMail
execute if score @s SendMail matches 1.. run function k.network:mailing/mails/sending/t.sendmail

#receiving
scoreboard players enable @s ReceiveMail
execute if score @s ReceiveMail matches 1.. run function k.network:mailing/mails/receiving/t.receivemail

# Gift System #
#sending
scoreboard players enable @s SendGift
execute if score @s SendGift matches 1.. run function k.network:mailing/gifts/sending/t.sendgift

#receiving
scoreboard players enable @s ReceiveGift
execute if score @s ReceiveGift matches 1.. run function k.network:mailing/gifts/receiving/t.receivegift

# Database Home #
#scoreboard players enable @s Database
execute if score @s Database matches 1.. run function k.network:network/database/trigger/database.home