--换甲按键
ChangeArmorButton = 5
--使用按键
UseKey = "e"
--休眠时间
Frequency = 5
--左右幅度
LeftRightRange = 19
--上下幅度
UpDownRange = 1
--抖动几轮后下降
Decline = 4
--下降幅度
DeclineOffset = 6

function OnEvent(event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    end
    -- 换甲 start
    function ChangeArmor()
        for i = 40700, 53933, 4411 do
            MoveMouseTo(12909, i)
            Sleep(13)
            PressAndReleaseMouseButton(1)
            Sleep(13)
        end
        PressAndReleaseKey("escape")
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == ChangeArmorButton) then
        PressKey(UseKey)
        Sleep(500)
        ReleaseKey(UseKey)
        Sleep(50)
        ChangeArmor()
    end
    -- 换甲 end

    -- 抖枪 start
    local time = 0
    local time2 = 0
    while (IsMouseButtonPressed(3)) do
        if (IsMouseButtonPressed(1)) then
            MoveMouseRelative(-LeftRightRange, LeftRightRange + UpDownRange)
            BetterSleep(Frequency)
            time2 = time2 + Frequency
            MoveMouseRelative(LeftRightRange, -LeftRightRange - UpDownRange)
            BetterSleep(Frequency)
            MoveMouseRelative(-LeftRightRange, LeftRightRange + UpDownRange)
            BetterSleep(Frequency)
            time2 = time2 + Frequency
            MoveMouseRelative(LeftRightRange, -LeftRightRange - UpDownRange)
            BetterSleep(Frequency)
            MoveMouseRelative(-LeftRightRange, LeftRightRange + UpDownRange)
            BetterSleep(Frequency)
            time2 = time2 + Frequency
            MoveMouseRelative(LeftRightRange, -LeftRightRange - UpDownRange)
            BetterSleep(Frequency)
            time = time + 1
            time2 = time2 + Frequency
            if (time >= Decline) then
                MoveMouseRelative(0, DeclineOffset)
                if (time2 <= 300) then
                    MoveMouseRelative(0, DeclineOffset)
                    if (time2 <= 200) then
                        MoveMouseRelative(0, DeclineOffset)
                        if (time2 <= 100) then
                            MoveMouseRelative(0, DeclineOffset)
                        end
                    end
                end
            end
        end
    end

    -- 抖枪 end
end

-- utils start
function BetterSleep(t)
    local sleep_start_time = GetRunningTime()
    repeat
        local sleep_end_time = GetRunningTime()
        local sleep_elapsed = sleep_end_time - sleep_start_time
    until (sleep_elapsed > t)
end
-- utils end
