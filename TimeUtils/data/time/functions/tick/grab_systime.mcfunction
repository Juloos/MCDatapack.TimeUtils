scoreboard players operation systime.delta time.vars = systime.daytime time.vars

# H1
data modify entity @e[tag=time.systime_graber,limit=1] data.time.digit_to_parse set string block 0 -64 0 LastOutput 44 45
execute as @e[tag=time.systime_graber,limit=1] run function time:_utils/parse_digit
execute store result score systime.HH time.vars run scoreboard players operation parsed_digit time.vars *= 10 time.vars

# H2
data modify entity @e[tag=time.systime_graber,limit=1] data.time.digit_to_parse set string block 0 -64 0 LastOutput 45 46
execute as @e[tag=time.systime_graber,limit=1] run function time:_utils/parse_digit
scoreboard players operation systime.HH time.vars += parsed_digit time.vars

# M1
data modify entity @e[tag=time.systime_graber,limit=1] data.time.digit_to_parse set string block 0 -64 0 LastOutput 47 48
execute as @e[tag=time.systime_graber,limit=1] run function time:_utils/parse_digit
execute store result score systime.MM time.vars run scoreboard players operation parsed_digit time.vars *= 10 time.vars

# M2
data modify entity @e[tag=time.systime_graber,limit=1] data.time.digit_to_parse set string block 0 -64 0 LastOutput 48 49
execute as @e[tag=time.systime_graber,limit=1] run function time:_utils/parse_digit
scoreboard players operation systime.MM time.vars += parsed_digit time.vars

# S1
data modify entity @e[tag=time.systime_graber,limit=1] data.time.digit_to_parse set string block 0 -64 0 LastOutput 50 51
execute as @e[tag=time.systime_graber,limit=1] run function time:_utils/parse_digit
execute store result score systime.SS time.vars run scoreboard players operation parsed_digit time.vars *= 10 time.vars

# S2
data modify entity @e[tag=time.systime_graber,limit=1] data.time.digit_to_parse set string block 0 -64 0 LastOutput 51 52
execute as @e[tag=time.systime_graber,limit=1] run function time:_utils/parse_digit
scoreboard players operation systime.SS time.vars += parsed_digit time.vars


scoreboard players operation systime.daytime time.vars = systime.HH time.vars
scoreboard players operation systime.daytime time.vars *= 60 time.vars
scoreboard players operation systime.daytime time.vars += systime.MM time.vars
scoreboard players operation systime.daytime time.vars *= 60 time.vars
scoreboard players operation systime.daytime time.vars += systime.SS time.vars

scoreboard players operation systime.delta time.vars -= systime.daytime time.vars
scoreboard players operation systime time.vars -= systime.delta time.vars
