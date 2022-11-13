import os
PATH = os.path.dirname(os.path.realpath(__file__))
FUNC = r"""# XX = HH:MM:SS
execute store success score found_systime time.vars if block 0 -64 0 minecraft:repeating_command_block{LastOutput:'{"extra":[{"text":"/me <action>"}],"text":"[HH:MM:SS] "}'} run scoreboard players set systime time.vars XX
execute unless score found_systime time.vars matches 1 run function time:grab_systime/YY
"""
CLOCK = 60 * 60 * 24
for XX in range(CLOCK):
    YY = str((XX + 1) % CLOCK)
    HH = f"{XX // 3600:0=2d}"
    MM = f"{(XX % 3600) // 60:0=2d}"
    SS = f"{XX % 60:0=2d}"
    print(f"{HH}:{MM}:{SS}")
    with open(f"{PATH}/{XX}.mcfunction", "w") as file:
        file.write(FUNC.replace("XX", str(XX)).replace("YY", YY).replace("HH", HH).replace("MM", MM).replace("SS", SS))
