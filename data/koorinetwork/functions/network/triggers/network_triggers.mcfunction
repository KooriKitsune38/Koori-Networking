# Mail System #
#sending
scoreboard players enable @s SendMail
execute if score @s SendMail matches 1.. run function koorinetwork:network/mails/sending/triggered_mail_sending

#receiving
scoreboard players enable @s ReceiveMail
execute if score @s ReceiveMail matches 1.. run function koorinetwork:network/mails/receiving/trigger/triggered_mail_receiving

# Gift System #
#sending
scoreboard players enable @s SendGift
execute if score @s SendGift matches 1.. run function koorinetwork:network/gifts/sending/triggered_gift_sending

#receiving
scoreboard players enable @s ReceiveGift
execute if score @s ReceiveGift matches 1.. run function koorinetwork:network/gifts/receiving/trigger/triggered_gift_receiving

# Database Home #
#scoreboard players enable @s Database
execute if score @s Database matches 1.. run function koorinetwork:network/database/trigger/triggered_database_home