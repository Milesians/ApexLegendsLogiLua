local source = [[（Caps Lock大小写开启关闭宏）]]
local hex = table.concat({string.byte(source, 1, -1)}, ",")
local ghubStr = string.format("OutputLogMessage(string.char(%s))",hex)
print(ghubStr)

--OutputLogMessage(string.format("OutputLogMessage(%s)",string.char(hex)))


