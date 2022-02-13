#> k.network:raycast/sign.check

#send_mail_sign (AKA [Database] Send Mail)
#execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"Send Mail"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"trigger SendMail"}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"Send Mail","color":"#FFADD1"}'}
execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"Send Mail"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"say I\'m trying to send a mail, but the sign says it doesn\'t work."}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"Doesn\'t work","color":"red"}'}
#receive_mail_sign (AKA [Database] Receive Mail)
execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"Receive Mail"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"trigger ReceiveMail"}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"Receive Mail","color":"#FFADD1"}'}
#send_gift_sign (AKA [Database] Send Gift)
execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"Send Gift"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"say I\'m trying to send a gift, but the sign says it doesn\'t work."}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"Doesn\'t work","color":"red"}'}
#receive_gift_sign (AKA [Database] Receive Gift)
execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"Receive Gift"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"trigger ReceiveGift"}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"Receive Gift","color":"#FFADD1"}'}
#registration_sign (AKA [Database] Register To Network)
execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"New User"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"trigger RegisterNetwork"}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"New User","color":"#FFADD1"}'}
#id_sign (AKA [Database] My ID)
execute if block ~ ~ ~ #signs{Text1:'{"text":"[Database]"}',Text2:'{"text":"My ID"}'} run data merge block ~ ~ ~ {Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"trigger MyID"}},{"text":"[","color":"black"},{"text":"Database","color":"#54003F"},{"text":"]","color":"black"}]',Text2:'{"text":"My ID","color":"#FFADD1"}'}

# Trigger enable #
execute if block ~ ~ ~ #signs{Text2:'{"color":"#FFADD1","text":"New User"}'} run scoreboard players enable @s RegisterNetwork
execute if block ~ ~ ~ #signs{Text2:'{"text":"New User","color":"#FFADD1"}'} run scoreboard players enable @s RegisterNetwork
execute if entity @s[tag=k.nRegistered] unless block ~ ~ ~ #signs{Text2:'{"color":"#FFADD1","text":"New User"}'} unless block ~ ~ ~ #signs{Text2:'{"text":"New User","color":"#FFADD1"}'} run scoreboard players reset @s RegisterNetwork