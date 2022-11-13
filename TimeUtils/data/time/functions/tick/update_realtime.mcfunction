execute as @e if score @s time.realtime.mode matches 1 run scoreboard players operation @s time.realtime.SS += systime_has_changed time.vars
execute as @e if score @s time.realtime.mode matches 2 run scoreboard players operation @s time.realtime.SS -= systime_has_changed time.vars

execute as @e run scoreboard players operation @s time.realtime.MM = @s time.realtime.SS
execute as @e run scoreboard players operation @s time.realtime.MM /= 60 time.vars

execute as @e run scoreboard players operation @s time.realtime.HH = @s time.realtime.MM
execute as @e run scoreboard players operation @s time.ticktime.HH /= 60 time.vars

execute as @e run scoreboard players operation @s time.realtime.DD = @s time.realtime.HH
execute as @e run scoreboard players operation @s time.realtime.DD /= 24 time.vars
