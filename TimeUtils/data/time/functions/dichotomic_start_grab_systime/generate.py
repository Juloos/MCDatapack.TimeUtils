import os
PATH = os.path.dirname(os.path.realpath(__file__))
FUNC = r"""# matches LO..HI
execute if score systime time.vars matches ..MID0 run function time:PATH1
execute if score systime time.vars matches MID1.. run function time:PATH2
"""
queue = [(0, 86399)]
while queue:
    lo, hi = queue.pop(0)
    mid = (lo + hi) // 2
    print(lo, hi)
    if hi - lo > 100:
        queue.append((lo, mid))
        queue.append((mid + 1, hi))
        with open(f"{PATH}/{lo}-{hi}.mcfunction", "w") as file:
            file.write(
                FUNC.replace(
                    "PATH1", f"dichotomic_start_grab_systime/{lo}-{mid}"
                ).replace(
                    "PATH2", f"dichotomic_start_grab_systime/{mid + 1}-{hi}"
                ).replace(
                    "MID0", str(mid)
                ).replace(
                    "MID1", str(mid + 1)
                ).replace(
                    "LO", str(lo)
                ).replace(
                    "HI", str(hi)
                )
            )
    else:
        with open(f"{PATH}/{lo}-{hi}.mcfunction", "w") as file:
            file.write(
                FUNC.replace(
                    "PATH1", f"grab_systime/{lo}"
                ).replace(
                    "PATH2", f"grab_systime/{mid + 1}"
                ).replace(
                    "MID0", str(mid)
                ).replace(
                    "MID1", str(mid + 1)
                ).replace(
                    "LO", str(lo)
                ).replace(
                    "HI", str(hi)
                )
            )
