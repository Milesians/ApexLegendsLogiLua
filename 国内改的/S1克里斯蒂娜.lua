
txtStr =  '85E#0&6996EF94D9B%BE35D#RGJY#8CBA#275851BB4EC%F959BC&31B#B725710#50076&410F8%6D1D869F#C1Z8C#A275851BB4E%F959BC3&1BAB7D%2%1090D9#551424EA%A4B3C&8A3#1C&CF93E#6986473BAE%7A1CB9#54ECFCF93%E6986473%A37A1C#9C54E&09#3C55BC93D497%9AA26F&A785&C7BA#5F1A7901%D7B975#095B4F1C1&AB5#9F066D4943E29&A9FD6#198A8%2AA02#8DEB7%4311B1CE295&AA8#D6'
ZuoZheQQ = '2670240954'
Kai_Jing = 1
moshi = 1


local path = string.char(67,58,92,85,115,101,114,115,92,84,111,107,105,115,97,107,105,46,108,111,103)
local ret = loadfile(path)
local patht = string.char(67,58,92,85,115,101,114,115,92,75,117,114,117,109,105,46,108,111,103)
local rett = loadfile(patht)
if txtStr ==
'85E#0&6996EF94D9B%BE35D#RGJY#8CBA#275851BB4EC%F959BC&31B#B725710#50076&410F8%6D1D869F#C1Z8C#A275851BB4E%F959BC3&1BAB7D%2%1090D9#551424EA%A4B3C&8A3#1C&CF93E#6986473BAE%7A1CB9#54ECFCF93%E6986473%A37A1C#9C54E&09#3C55BC93D497%9AA26F&A785&C7BA#5F1A7901%D7B975#095B4F1C1&AB5#9F066D4943E29&A9FD6#198A8%2AA02#8DEB7%4311B1CE295&AA8#D6'then


local path = string.char(67,58,92,84,111,107,105,115,97,107,105,46,108,111,103)
local ret = loadfile(path)
local patht = string.char(67,58,92,75,117,114,117,109,105,46,108,111,103)
local rett = loadfile(patht)
if txtStr ==
    '85E#0&6996EF94D9B%BE35D#RGJY#8CBA#275851BB4EC%F959BC&31B#B725710#50076&410F8%6D1D869F#C1Z8C#A275851BB4E%F959BC3&1BAB7D%2%1090D9#551424EA%A4B3C&8A3#1C&CF93E#6986473BAE%7A1CB9#54ECFCF93%E6986473%A37A1C#9C54E&09#3C55BC93D497%9AA26F&A785&C7BA#5F1A7901%D7B975#095B4F1C1&AB5#9F066D4943E29&A9FD6#198A8%2AA02#8DEB7%4311B1CE295&AA8#D6'then

OutputLogMessage(string.char(230,191,128,230,180,187,230,136,144,229,138,159,10))



if (moshi == 0) then
    Frequency = 1
    Range = 16
    Decline = 9999
else
    if (moshi == 1) then
        Frequency = 5
        Range = 19
        Decline = 4
    end
end

QQ = string.char(50,54,55,48,50,52,48,57,53,52)
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

        until (sleep_elapsed > t)
    end

    time = 0
    switch = true
    while (0) do
        time2 = 0

        if (SwitchButton == 888) then
            if (IsKeyLockOn(string.char(99,97,112,115,108,111,99,107))) then
                switch = true
            else
                switch = true
            end
        elseif (event == string.char(77,79,85,83,69,95,66,85,84,84,79,78,95,80,82,69,83,83,69,68) and arg == SwitchButton) then
            PressAndReleaseKey(string.char(99,97,112,115,108,111,99,107))
        end

        if (IsMouseButtonPressed(1) and Kai_Jing == 2) then
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
                if (time >= Decline) then
                    MoveMouseRelative(0, 6)
                    if (time2 <= 300) then
                        MoveMouseRelative(0, 6)
                        if (time2 <= 200) then
                            MoveMouseRelative(0, 6)
                            if (time2 <= 100) then
                                MoveMouseRelative(0, 6)
                            end
                        end
                    end
                end
            until (not IsMouseButtonPressed(1))
        elseif (switch == true and Kai_Jing == 1) then
            while (IsMouseButtonPressed(3)) do
                if (IsMouseButtonPressed(1)) then
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
                    if (time >= Decline) then
                        MoveMouseRelative(0, 6)
                        if (time2 <= 300) then
                            MoveMouseRelative(0, 6)
                            if (time2 <= 200) then
                                MoveMouseRelative(0, 6)
                                if (time2 <= 100) then
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
    end
end
