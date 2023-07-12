---------------------------------------------------------------------------------------------------------
ChangeArmorButton = 5
--设置一键换甲鼠标按键 5是上侧键 4是下侧键
UseKey = "e"
--设置使用按键
---------------------------------------------------------------------------------------------------------
PressGun = false
--设置是否需要压枪
DisableCapsLock = true
--是否始终开启抖枪
Y = {53933, 46271, 47409, 44085, 42400, 40700, 25003, 4411}
--换甲坐标--按中键获取
---------------------------------
Frequency = 5
--------------------------------------
Range = 2
--控制上下左右的幅度
Decline = 2
--控制压枪的幅度

-- 换甲
function ChangeArmor()
    PressKey(UseKey)
    BetterSleep(500)
    ReleaseKey(UseKey)
    BetterSleep(50)
    for key, value in ipairs(Y) do
        MoveMouseTo(12909, value)
        BetterSleep(13)
        PressAndReleaseMouseButton(1)
        BetterSleep(13)
    end
    PressAndReleaseKey("TAB")
end


function Shake()
    if (IsKeyLockOn("capslock") or DisableCapsLock) then
        while (IsMouseButtonPressed(3)) do
            if (IsMouseButtonPressed(1)) then
                MoveMouseRelative(-Range, Range)
                Sleep(Frequency)
                MoveMouseRelative(Range, -Range)
                Sleep(Frequency)
                MoveMouseRelative(-Range, Range)
                Sleep(Frequency)
                MoveMouseRelative(Range, -Range)
                Sleep(Frequency)
                MoveMouseRelative(-Range, Range)
                Sleep(Frequency)
                MoveMouseRelative(Range, -Range)
                Sleep(Frequency)
                if (PressGun) then
                    MoveMouseRelative(0, Decline)
                end
            end
        end
    end
end

EnablePrimaryMouseButtonEvents(true)

while (true) do
    if IsMouseButtonPressed(ChangeArmorButton) then
        ChangeArmor()
    end
    if IsMouseButtonPressed(3) then
        Shake()
    end
    sleep(10)
end
