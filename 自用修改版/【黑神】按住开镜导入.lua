---【长按】---------买了倒卖的无售后无更新认准 黑神工作室【绿字乱该鼠标乱飞别找我】---------------------
LMD = 1.9
--输入游戏内鼠标灵敏度（设置你游戏内的灵敏度如：3.5就改3.5
ADS = 1.0
--ADS输入游戏内ADS鼠标灵敏度,也叫开镜灵敏度，默认1.0（游戏内ads改1.3效果更好）
---------------------------------------------------------------------------------------------------------
SwitchButton = 888
--设置抖枪开关鼠标按键，【大小写键灯亮：启动 灯灭：关闭】（可改为侧键）
---------------------------------------------------------------------------------------------------------
YJHJButton = 5
--设置一键换甲鼠标按键，可自行修改将999改为鼠标侧键编号（不知道编号加群看去【群相册】或者问【客服】）

---------------------------------
Frequency = 6
Adjustment = 0
UseKey = "e"

--------------------------------------

LeftRightRange = (6 // (LMD * ADS)) + 3 + Adjustment
Decline_range = 8 * LMD
PressGun = true

-- utils start
function BetterSleep(t)
    local sleep_start_time = GetRunningTime()
    repeat
        local sleep_end_time = GetRunningTime()
        local sleep_elapsed = sleep_end_time - sleep_start_time
    until (sleep_elapsed > t)
end
-- utils end

function OnEvent(event, arg)

    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    end


    points = {
        -- X,Y,Time(ms)
        {11577, 34195, 5},
        {11577, 38568, 5},
        {11577, 42819, 5},
        {11577, 46342, 5},
        {11577, 50776, 5}
    }

    function YJHJ()
        for k, v in ipairs(points) do
            BetterSleep(5)
            MoveMouseTo(v[1], v[2])
            BetterSleep(1)
            PressMouseButton(1)
            BetterSleep(v[3])
            ReleaseMouseButton(1)
        end
        PressAndReleaseKey("escape")
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == YJHJButton) then
        PressKey(UseKey)
        Sleep(500)
        ReleaseKey(UseKey)
        Sleep(50)
        YJHJ()
    end

    local time = 0
    local fast_decline = LeftRightRange * 12

    if (IsKeyLockOn("capslock")) then
        while (IsMouseButtonPressed(3)) do
            if (IsMouseButtonPressed(1)) then
                MoveMouseRelative(LeftRightRange, -LeftRightRange)
                BetterSleep(Frequency)
                time = time + Frequency
                MoveMouseRelative(-LeftRightRange, LeftRightRange)
                BetterSleep(Frequency)
                time = time + Frequency
                if (time >= Decline_range and PressGun) then
                    MoveMouseRelative(0, ((fast_decline // 12) + 1))
                    time = 0
                    if (fast_decline > 0) then
                        fast_decline = fast_decline - 2
                    else
                        fast_decline = 0
                    end
                end
            end
        end
    end
end