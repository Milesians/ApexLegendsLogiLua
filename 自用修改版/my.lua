---【长按】----------------------------------------------------------------------------------------------
LMD = 1.5
--输入游戏内鼠标灵敏度（设置你游戏内的灵敏度如：3.5就改3.5
ADS = 1.0
--ADS输入游戏内ADS鼠标灵敏度,也叫开镜灵敏度，默认1.0
---------------------------------------------------------------------------------------------------------
ChangeArmorButton = 5
--一键换甲鼠标按键
UseKey = "e"
--设置使用按键
--------------------------------------
--抖枪的幅度，个人2K分辨率 1.5*800 DPI 这边使用 2-3 即可
Range = 2
Decline = 4
---------------------------------------------------------------------------------------------------------
PressGun = false
--设置是否需要压枪
DisableCapsLock = true
--是否始终开启抖枪
Y = {40700, 53933, 4411, 47409, 46271, 44085, 42400, 25003}
--换甲坐标的Y值--按中键获取
---------------------------------

-- utils start
function BetterSleep(t)
    local sleep_start_time = GetRunningTime()
    repeat
        local sleep_end_time = GetRunningTime()
        local sleep_elapsed = sleep_end_time - sleep_start_time
    until (sleep_elapsed > t)
end
-- utils end
-- 换甲

function ChangeArmor()
    for key, value in ipairs(Y) do
        MoveMouseTo(12909, value)
        BetterSleep(13)
        PressAndReleaseMouseButton(1)
        BetterSleep(13)
    end
    PressAndReleaseKey("tab")
end

function OnEvent(event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    end
    if (IsKeyLockOn("capslock") or DisableCapsLock) then
        while (IsMouseButtonPressed(3)) do
            while (IsMouseButtonPressed(1)) do
                MoveMouseRelative(-Range, Range * 2)
                BetterSleep(Frequency)
                MoveMouseRelative(Range, -Range * 2)
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range * 2)
                BetterSleep(Frequency)
                MoveMouseRelative(Range, -Range * 2)
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range * 2)
                BetterSleep(Frequency)
                MoveMouseRelative(Range, -Range * 2)
                BetterSleep(Frequency)
                if (PressGun) then
                    MoveMouseRelative(0, Decline)
                end
            end
        end
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == ChangeArmorButton) then
        PressKey(UseKey)
        BetterSleep(500)
        ReleaseKey(UseKey)
        BetterSleep(50)
        ChangeArmor()
    end
    -- 换甲 end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 3) then
        -- 初始化：获取坐标
        x, y = GetMousePosition()
        OutputLogMessage("X: %d || Y: %d\n", x, y)
    end
end
