LMD = 3.0
--输入游戏内鼠标灵敏度
Quick_Shield_Change_Button = 4
--鼠标4号按键为一键换甲按键，可自行修改（目前只可以修改鼠标按键）

Frequency = 5
--抖动参数，一般不需要调整

LeftRightRange = (8 // LMD) + 2
Decline_range = 6 * LMD

EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)
    function YJHJ()
        for i = 40700, 53933, 4411 do
            MoveMouseTo(12909, i)
            Sleep(13)
            PressAndReleaseMouseButton(1)
            Sleep(13)
        end
        PressAndReleaseKey("escape")
    end
    if event == "MOUSE_BUTTON_PRESSED" and arg == Quick_Shield_Change_Button then
        PressKey("e")
        Sleep(500)
        ReleaseKey("e")
        Sleep(50)
        YJHJ()
    end

    time = 0
    if (IsKeyLockOn("capslock")) then
        while (IsMouseButtonPressed(3)) do
            if (IsMouseButtonPressed(1)) then
                MoveMouseRelative(LeftRightRange, LeftRightRange)
                Sleep(Frequency)
                time = time + Frequency
                MoveMouseRelative(-LeftRightRange, -LeftRightRange)
                Sleep(Frequency)
                time = time + Frequency
                if (time >= Decline_range) then
                    MoveMouseRelative(0, 1)
                    time = 0
                end
            end
        end
    end
end
