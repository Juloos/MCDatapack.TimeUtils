# Uses previous record of `systime time.vars` to start searching for systime at optimal position
scoreboard players operation systime_has_changed time.vars = systime time.vars
function time:dichotomic_start_grab_systime/check
scoreboard players operation systime_has_changed time.vars -= systime time.vars

scoreboard players operation systime.HH time.vars = systime time.vars
scoreboard players operation systime.HH time.vars /= 3600 time.vars

scoreboard players operation systime.MM time.vars = systime time.vars
scoreboard players operation systime.MM time.vars /= 60 time.vars
scoreboard players operation systime.MM time.vars %= 60 time.vars

scoreboard players operation systime.SS time.vars = systime time.vars
scoreboard players operation systime.SS time.vars %= 60 time.vars
