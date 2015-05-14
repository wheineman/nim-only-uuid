##
## nuuid.nim
##
##

import math
import sequtils
import strutils
import times

randomize()

const pattern = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"

proc getTime(): int  =
  toInt(epochTime() * 100000)

proc generateUUID*(): string =
  var d = getTime()
  proc fn(c : char): string =
    var r = toInt(toFloat(d) + random(1.0) * 16) %% 16
    d = toInt(floor(toFloat(d) / 16))
    toHex(if c == 'x': r else: r and 0x3 or 0x8, 1)
  toLower(join(pattern.mapIt(string, if it == 'x' or it == 'y': fn(it) else: $it)))
