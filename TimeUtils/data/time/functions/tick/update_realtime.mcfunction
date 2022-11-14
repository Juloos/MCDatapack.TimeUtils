execute as @e if score @s time.realtime.mode matches 1 unless score @s time.realtime matches ..0 run scoreboard players operation @s time.realtime += systime_has_changed time.vars
execute as @e if score @s time.realtime.mode matches 2 run scoreboard players operation @s time.realtime -= systime_has_changed time.vars

execute as @e run scoreboard players operation @s time.realtime.SS = @s time.realtime
execute as @e run scoreboard players operation @s time.realtime.SS %= 60 time.vars

execute as @e run scoreboard players operation @s time.realtime.MM = @s time.realtime
execute as @e run scoreboard players operation @s time.realtime.MM /= 60 time.vars
execute as @e run scoreboard players operation @s time.realtime.MM %= 60 time.vars

execute as @e run scoreboard players operation @s time.realtime.HH = @s time.realtime
execute as @e run scoreboard players operation @s time.realtime.HH /= 3600 time.vars
execute as @e run scoreboard players operation @s time.ticktime.HH %= 24 time.vars

execute as @e run scoreboard players operation @s time.realtime.DD = @s time.realtime
execute as @e run scoreboard players operation @s time.realtime.DD /= 3600 time.vars
execute as @e run scoreboard players operation @s time.realtime.DD /= 24 time.vars
