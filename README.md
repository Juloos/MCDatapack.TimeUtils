# MCDatapack.TimeUtils
A Time Utilities 1.19 Minecraft Datapack, can count in real and in-game time

# Installation
See [this tutorial](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack) for installing the datapack to your minecraft world.

This Datapack also needs Python 3 to run some script: its only purpose is to avoid directly manipulating 90k files over 26Mo.
When the Datapack is installed in the wanted world, execute with Python: the script will generate functions that gets the system time.
If you don't to use this feature of the Datapack then don't bother generating them at all.

# How to use ?
Run as any entity the following functions to manipulate a tick-based chronometer:
 - `/function time:utils/ticktime/set_timer` will set the chrono to timer mode, co
