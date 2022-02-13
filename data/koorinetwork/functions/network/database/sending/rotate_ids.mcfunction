# Rotate Ids #
data modify storage koorinetwork:database Users append from storage koorinetwork:database Users[0]
data remove storage koorinetwork:database Users[0]

# Rotate if not the same id #
function koorinetwork:network/database/sending/check_ids