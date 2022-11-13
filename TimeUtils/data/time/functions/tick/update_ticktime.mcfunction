execute as @e if score @s time.ticktime.mode matches 1 run scoreboard players remove @s time.ticktime 1
execute as @e if score @s time.ticktime.mode matches 2 run scoreboard players add @s time.ticktime 1

execute as @e run scoreboard players operation @s time.ticktime.SS = @s time.ticktime
execute as @e run scoreboard players operation @s time.ticktime.SS /= 20 time.vars

execute as @e run scoreboard players operation @s time.ticktime.MM = @s time.ticktime.SS
execute as @e run scoreboard players operation @s time.ticktime.MM /= 60 time.vars

execute as @e run scoreboard players operation @s time.ticktime.HH = @s time.ticktime.MM
execute as @e run scoreboard players operation @s time.ticktime.HH /= 60 time.vars

execute as @e run scoreboard players operation @s time.ticktime.DD = @s time.ticktime.HH
execute as @e run scoreboard players operation @s time.ticktime.DD /= 24 time.vars
