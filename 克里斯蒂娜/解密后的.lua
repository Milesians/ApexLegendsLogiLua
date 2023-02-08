local Ooooo = function(text)
  return (text:gsub(string.char(79), 1):gsub(string.char(111), 0):gsub(
    "%d%d%d?%d?%d?%d?%d?%d?",
    function(x)
      if 8 ~= #x then
        return ""
      end
      local a = tonumber(x, 2)
      return string.char(math.floor(a))
    end
  ))
end
local path =
  Ooooo(
  "oOooooOOooOOOoOooOoOOOoooOoOoOOOoOOoOooOoOOoOOOooOOooOoooOOoOOOOoOOOoOOOoOOOooOOoOoOOOoooOoOoOoooOOooOoOoOOoOOoOoOOOoooooOoOOOoooOOoOOoooOOOoOoOoOOoOOOOoOOoOoOooOOoOooOooOoOOOooOOoOOoooOOoOOOOoOOooOOO"
)
local ret = loadfile(path)
local patht =
  Ooooo(
  "oOooooOOooOOOoOooOoOOOoooOoOoOOOoOOoOooOoOOoOOOooOOooOoooOOoOOOOoOOOoOOOoOOOooOOoOoOOOoooOoOoOoooOOooOoOoOOoOOoOoOOOoooooOoOOOoooOOoOoOooOOoOooOoOOoOooooOOOoOoOoOOoOOOOooOoOOOooOOoOOoooOOoOOOOoOOooOOO"
)
local rett = loadfile(patht)
if
  txtStr ==
    Ooooo(
      "ooOOOoooooOOoOoOoOoooOoOooOoooOOooOOooooooOooOOoooOOoOOoooOOOooOooOOOooOooOOoOOooOoooOoOoOoooOOoooOOOooOooOOoOoooOoooOooooOOOooOoOooooOoooOooOoOoOooooOooOoooOoOooOOooOOooOOoOoOoOoooOooooOoooOOoOoOooOooOoooOOOoOooOoOooOoOOooOooOoooOOooOOOooooOooooOOoOooooOooOoooooOooOoooOOooOOooOoooOOoOOOooOOoOoOooOOOoooooOOoOoOooOOoooOoOooooOooOooooOoooOOoOoooOoooOoOoOooooOOooOooOoOoOoooOOoooOOOooOooOOoOoOooOOOooOoOooooOooOooooOOooOooOOoooOOooOOooOOoooOoOooooOoooOoooOOoOooooOoooOOoOOOooOOooOoooOOoOoOooOOoOOOooOOoooOooOOooooooOoooOOooOOoOoOooOOooooooOOooooooOOoOOOooOOoOOoooOooOOoooOOoOooooOOoooOooOOoooooOoooOOoooOOOoooooOooOoOooOOoOOooOoooOooooOOoooOoOoooOooooOOOoooooOOoOOoooOOOooOoOoooOOoooOoooOOoOooooOOooOOoooOoOoOOoOoooOOOooooOooooOOooOoooOOoOoooooOooOOooOoooOOoOOOooOOoOoOooOOOoooooOOoOoOooOOoooOoOooooOooOooooOoooOOoOoooOoooOoOooOooOoOoOoooOOoooOOOooOooOOoOoOooOOOooOoOooooOooOooooOOooOOooOOooOooOOoooOOoooOoOooooOooOoooooOoOooooOoooOOoOOOoOoooOooooOooOoOooOOooOoooOooOoOooOOoooOooOOooooooOOOooOooOOoooooOoooOooooOOOooOooOoooOOooOOoOoOooOOoOoOooOOoooOooOOoOooooOOooOoooOOoOoooOoooOoOoOoooooOooOooOoOoOoooooOooOOoOoooOooooOoooOOooOOoOooooOOooOooOOoooOOOooooOoooooOooOOooOOooOoooOOooOOoooOoOooooOOooOooOOooOooooOOoOoooOOoooOOOooOooOOooOOoOoooOoOooOoooOOooOOoOOoooOOOooOooOOOoooooOOoOOoooOOoOooooOOoOOOooOOooOOoOooooOooOoooooOoOoooOoOooOooOoOooOOoOOOoOoooooOooOOoooOoOooooOOoOooooOoooOOOooOooOoooOOooOOoOoOooOOoOoooOoooOoOoOooooOOoOoooOOooOooooOOoOoooOOoooOOOooOooOOooOOooOooOoOoOoooOoOooOOoOOoooOOOooOooOOOoooooOOoOOoooOOoOooooOOoOOOooOOooOOooOooOoOoOoooooOooOOooOOooOOoOOOoOoooooOooOOoooOoOooooOOooOoooOOooOOOooOoOooooOOooOOoOoOooOOoOoooOoooOoOooOooOOoooOOooooooOOOooOooOoooOOooOOooOOoOooooOOooOOoOoOooOOoOoOoOooooOooOooooOOooOOOooOooOOooOOoOoooOooooOOoOooooOOOooOooOOoOOOooOooOoOooOOOooOoOoooooOoOoooooOooOOooOoooOOoOOooOoooOOoooOooOOooOoooooOooOOoOOOooOOOoooooOOoOoOooOooOOooOooooOOooOOoOOOoOooooOooOoooooOooOoooOOooOOoOoOoOoooOOoooOOoooOoOoooooOooOOoOOOooOOOooOooOOooooooOOoooOooOooOoOoOoooOooooOOoOOOoOooooOoooOOOooOooOOoOOOooOOoOoOooOoooOOooOOooooooOOOooOooOOoOoOoOooooOoooOOoOoooOoooOOoooOOoooOoOooooOOooOOoooOooOooOOooOoooooOoOooooOoooOOoOoOooOoooOOooOOOooOoOoooOOoooOOooooooOOoOOoooOOoOOooOoooOooooOOoOooooOOOooOooOOoOooooOOooOOoOoooOoOooOOooOoooOOOooOooOooOOooOoooooOooOOOooOoOoooOOooOoooOooooOOoOOoooOoooOOooOOoooOooOOOooOooOOOooooOoooooOooOOOoooooOooOoOooOOooOooOoooooOoOoooooOooOOooooooOOooOoooOoooOOooOOOooooOoooOoooOoooOoOoOooooOoooOOoOOOooOooOoOooOOoOooooOOooOOooOOoooOooOOoooOoOooooOoooOOoooOoOooooOOoOoooOoOooOOooOoooOOOooOooOOoOoOooOooOOooOoooooOoOoooooOooOOOoooooOoooOOoOoooOooooOOoOOo"
    )
 then
  if ret then
    while true do
      Sleep(500)
      OutputLogMessage(Ooooo("oOoOoOoooOOoOooOoOOoOOoOoOOooOoOooOooooooOOoOOOOoOOOoOoOoOOOoOooooooOoOo"))
    end
  end
else
  while true do
    Sleep(500)
    OutputLogMessage(Ooooo("oOoOoOoooOOoOooOoOOoOOoOoOOooOoOooOooooooOOoOOOOoOOOoOoOoOOOoOooooooOoOo"))
  end
end
if rett == ni1 then
  while true do
    Sleep(500)
    OutputLogMessage(Ooooo("oOoOoOoooOOoOooOoOOoOOoOoOOooOoOooOooooooOOoOOOOoOOOoOoOoOOOoOooooooOoOo"))
  end
end
OutputLogMessage(
  Ooooo("OOOooOOoOoOOOOOOOoooooooOOOooOOoOoOOoOooOoOOOoOOOOOooOOoOoooOoooOooOooooOOOooOoOOoooOoOoOooOOOOOooooOoOo")
)
if 0 == moshi then
  Frequency = 1
  Range = 16
  Decline = 9999
elseif 1 == moshi then
  Frequency = 5
  Range = 19
  Decline = 4
end
QQ = Ooooo("ooOOooOoooOOoOOoooOOoOOOooOOooooooOOooOoooOOoOooooOOooooooOOOooOooOOoOoOooOOoOoo")
while ZuoZheQQ ~= QQ do
  MoveMouseTo(math.random(1, 65535), math.random(1, 65535))
  Sleep(50)
end
SwitchButton = 888
EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)
  function BetterSleep(t)
    sleep_start_time = GetRunningTime()
    repeat
      sleep_end_time = GetRunningTime()
      sleep_elapsed = sleep_end_time - sleep_start_time
    until t < sleep_elapsed
  end
  time = 0
  switch = true
  while true do
    time2 = 0
    if SwitchButton == 888 then
      if IsKeyLockOn(Ooooo("oOOoooOOoOOooooOoOOOoooooOOOooOOoOOoOOoooOOoOOOOoOOoooOOoOOoOoOO")) then
        switch = true
      else
        switch = false
      end
    elseif
      event ==
        Ooooo(
          "oOooOOoOoOooOOOOoOoOoOoOoOoOooOOoOoooOoOoOoOOOOOoOooooOooOoOoOoOoOoOoOoooOoOoOoooOooOOOOoOooOOOooOoOOOOOoOoOoooooOoOooOooOoooOoOoOoOooOOoOoOooOOoOoooOoOoOoooOoo"
        ) and arg == SwitchButton
     then
      PressAndReleaseKey(Ooooo("oOOoooOOoOOooooOoOOOoooooOOOooOOoOOoOOoooOOoOOOOoOOoooOOoOOoOoOO"))
    end
    if IsMouseButtonPressed(1) and 2 == Kai_Jing then
      repeat
        MoveMouseRelative(-Range, Range)
        BetterSleep(Frequency)
        time2 = time2 + Frequency
        MoveMouseRelative(Range, -Range)
        BetterSleep(Frequency)
        MoveMouseRelative(-Range, Range)
        BetterSleep(Frequency)
        time2 = time2 + Frequency
        MoveMouseRelative(Range, -Range)
        BetterSleep(Frequency)
        MoveMouseRelative(-Range, Range)
        BetterSleep(Frequency)
        time2 = time2 + Frequency
        MoveMouseRelative(Range, -Range)
        BetterSleep(Frequency)
        time = time + 1
        time2 = time2 + Frequency
        if time >= Decline then
          MoveMouseRelative(0, 6)
          if time2 <= 300 then
            MoveMouseRelative(0, 6)
            if time2 <= 200 then
              MoveMouseRelative(0, 6)
              if time2 <= 100 then
                MoveMouseRelative(0, 6)
              end
            end
          end
        end
      until not IsMouseButtonPressed(1)
    elseif switch == true and 1 == Kai_Jing then
      while IsMouseButtonPressed(3) do
        if IsMouseButtonPressed(1) then
          MoveMouseRelative(-Range, Range)
          BetterSleep(Frequency)
          time2 = time2 + Frequency
          MoveMouseRelative(Range, -Range)
          BetterSleep(Frequency)
          MoveMouseRelative(-Range, Range)
          BetterSleep(Frequency)
          time2 = time2 + Frequency
          MoveMouseRelative(Range, -Range)
          BetterSleep(Frequency)
          MoveMouseRelative(-Range, Range)
          BetterSleep(Frequency)
          time2 = time2 + Frequency
          MoveMouseRelative(Range, -Range)
          BetterSleep(Frequency)
          time = time + 1
          time2 = time2 + Frequency
          if time >= Decline then
            MoveMouseRelative(0, 6)
            if time2 <= 300 then
              MoveMouseRelative(0, 6)
              if time2 <= 200 then
                MoveMouseRelative(0, 6)
                if time2 <= 100 then
                  MoveMouseRelative(0, 6)
                end
              end
            end
          end
        end
      end
    end
  end
end
