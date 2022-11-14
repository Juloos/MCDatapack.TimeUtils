# MCDatapack.TimeUtils
A Time Utilities 1.19 Minecraft Datapack, can count in real and in-game time

# Installation
See [this tutorial](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack) for installing the datapack to your minecraft world.

This Datapack also needs Python 3 to run some script: its only purpose is to avoid directly manipulating 90k files over 26Mo.
When the Datapack is installed in the wanted world, execute with Python: the script will generate functions that gets the system time.
If you don't to use this feature of the Datapack then don't bother generating them at all.

# Tick-based time utils
Run as any entity the following functions to manipulate a tick-based chronometer:
 - `/function time:utils/ticktime/set_timer` will set the chrono to timer mode (not started yet): counting down ticks of entity's score `timer.ticktime` to 0.
 - `/function time:utils/ticktime/set_clock` will set the chrono to clock mode (not started yet): entity's score `time.ticktime` adds up every tick until stopped.
 - `/function time:utils/ticktime/play` will start (or unpause) the chronometer, depending of its mode this will add or remove entity's score `time.ticktime` 1 every tick.
 - `/function time:utils/ticktime/pause` will pause the chronometer, without changing its mode.

Note that you can at any moment get some scores of any given entity:
 - `time.ticktime` is the number of ticks in the chronometer (to interpret differentlty wether the mode is clock or timer)
 - `time.ticktime.SS` + `time.ticktime.MM` + `time.ticktime.HH` + `time.ticktime.DD` are respectively the number of seconds, minutes, hours and days corresponding to `time.ticktime`

# Real time utils
You can use `systime.HH`, `systime.MM` and `systime.SS` from scoreboard `time.vars` to get the current system time, just like a watch !

Through syncronization of this watch we can also provide realtime versions of the tick-based utils functions (replace occurences of `ticktime` by `realtime` and you will have the same results in a real time context, however it will count in seconds rather than ticks)

# Why using realtime over ticktime ?
It depends a lot on what you are trying to do: for speedrunning, or splitting contestants of a race, it will be better to use ticktime simply because that allows for more precision and doesn't require desyncronization from TPS. 

On the other hand, counting down the time left for some mini-game would better use realtime, since low TPS can make a Tick-based clock "slower" and count more time than it is in reality.

# Examples
The following sequence of commands will set up a 50-ticks (2.5s) timer attributed to `Juloos`:
```
/execute as Juloos run function time:utils/ticktime/set_timer
/scoreboard players set Juloos time.ticktime 50
/execute as Juloos run function time:utils/ticktime/play
```

And the following a real time clock that will stop after 2 Minecraft days (or 20*60*20*2 ticks):
```
/execute as Juloos run function time:utils/realtime/set_clock
/execute as Juloos run function time:utils/realtime/play

/execute as Juloos run function time:utils/ticktime/set_timer
/scoreboard players set Juloos time.ticktime 48000
/execute as Juloos run function time:utils/ticktime/play

# in a repeating command-block, or tick function
/execute as Juloos if score @s time.ticktime matches 0 run function time:utils/realtime/pause
```
And you will have roughly 40 or more in `Juloos time.realtime.MM` afterwards.
