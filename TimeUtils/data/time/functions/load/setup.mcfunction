scoreboard objectives add time.vars dummy

# mode -2 <=> Paused Clock
# mode -1 <=> Paused Timer
# mode 1 <=> Timer
# mode 2 <=> Clock

scoreboard objectives add time.ticktime dummy
scoreboard objectives add time.ticktime.mode dummy
scoreboard objectives add time.ticktime.SS dummy
scoreboard objectives add time.ticktime.MM dummy
scoreboard objectives add time.ticktime.HH dummy
scoreboard objectives add time.ticktime.DD dummy

scoreboard objectives add time.realtime dummy
scoreboard objectives add time.realtime.mode dummy
scoreboard objectives add time.realtime.SS dummy
scoreboard objectives add time.realtime.MM dummy
scoreboard objectives add time.realtime.HH dummy
scoreboard objectives add time.realtime.DD dummy


scoreboard players set -1 time.vars -1
scoreboard players set 20 time.vars 20
scoreboard players set 24 time.vars 24
scoreboard players set 60 time.vars 60
scoreboard players set 3600 time.vars 3600

setblock 0 -64 0 minecraft:repeating_command_block{auto:1b,Command:"/help me"}
gamerule maxCommandChainLength 262144
scoreboard players set found_systime time.vars 0
function time:grab_systime/0
gamerule maxCommandChainLength 65536
