#> k.network:mailing/mails/sending/t.sendmail

# Errors
#> no_book_in_hand
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function k.network:mailing/mails/feedback/no.book
#> too_many_books
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] unless entity @s[nbt={SelectedItem:{Count:1b}}] run function k.network:mailing/mails/feedback/many.books
#> set_a_number
execute if score @s SendMail matches 0..1 if entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function k.network:mailing/invalid.id
#> sending_to_self
#execute if score @s SendMail = @s k.nIDs if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b}}] run function k.network:mailing/mails/sending/trigger/sending_to_self

# Send Mail #
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] unless score @s SendMail matches 0..1 run function k.network:mailing/mails/sending/sending_requirements

# Reset Id #
scoreboard players reset @s SendMail