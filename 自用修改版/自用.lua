---------------------------------------------------------------------------------------------------------
ChangeArmorButton= 5
--设置一键换甲鼠标按键
UseKey = "e"
--设置使用按键
---------------------------------------------------------------------------------------------------------
PressGun = false
--设置是否需要压枪
DisableCapsLock= true
--是否始终开启抖枪
Y = {53933,46271,47409,44085,42400,40700,25003,4411}
--换甲坐标--按中键获取
---------------------------------
Frequency = 5
--------------------------------------

--LeftRightRange = (6 // (LMD * ADS)) + 3 + Adjustment
Range = 2
Decline = 2

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
        MoveMouseTo(12909, value )
        BetterSleep(13)
        PressAndReleaseMouseButton(1)
        BetterSleep(13)
    end
    PressAndReleaseKey("TAB")
end


EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 3) then
        -- 初始化：获取坐标
        x,y = GetMousePosition()
        OutputLogMessage("X: %d || Y: %d\n",x,y)
    end


    if (event == "MOUSE_BUTTON_PRESSED" and arg == ChangeArmorButton) then
        PressKey(UseKey)
        BetterSleep(500)
        ReleaseKey(UseKey)
        BetterSleep(50)
        ChangeArmor()
    end
    -- 换甲 end


    if (IsKeyLockOn("capslock") or DisableCapsLock) then
        while (IsMouseButtonPressed(3)) do
            if(IsMouseButtonPressed(1)) then

                MoveMouseRelative(-Range, Range )
                BetterSleep(Frequency)
                MoveMouseRelative(Range, -Range )
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range )
                BetterSleep(Frequency)
                MoveMouseRelative(Range, -Range )
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range )
                BetterSleep(Frequency)
                MoveMouseRelative(Range, -Range )
                BetterSleep(Frequency)
                if (PressGun) then
                    MoveMouseRelative(0, Decline)
                end
            end
        end
    end
end