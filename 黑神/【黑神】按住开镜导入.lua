Xian_Yu_ID = "ID:HS-GZS-唯一QQ：215553307 "
Xian_Yu = "HeiShen_Gong_Zuo_Shi售后群：785906665"
FangWei = "请认准闲鱼ID:黑神工作室 售后群：785414446"
---【长按】---------买了倒卖的无售后无更新认准 黑神工作室【绿字乱该鼠标乱飞别找我】---------------------
LMD = 2.5
--输入游戏内鼠标灵敏度（设置你游戏内的灵敏度如：3.5就改3.5
ADS = 1.0
--ADS输入游戏内ADS鼠标灵敏度,也叫开镜灵敏度，默认1.0（游戏内ads改1.3效果更好）
---------------------------------------------------------------------------------------------------------
SwitchButton = 888
--设置抖枪开关鼠标按键，【大小写键灯亮：启动 灯灭：关闭】（可改为侧键）
---------------------------------------------------------------------------------------------------------
YJHJButton = 999
--设置一键换甲鼠标按键，可自行修改将999改为鼠标侧键编号（不知道编号加群看去【群相册】或者问【客服】）
---------------------------------------------------------------------------------------------------------
--唯一qq：215553307 （其他都是倒卖）
--售后更新1群：785414446（备注闲鱼昵称申请-更新售后群）
--售后更新2群：785906665（备注闲鱼昵称申请-更新售后群）
--咸鱼认准头像：黑神工作室（其他都是倒卖）

---------------------------------
Frequency = 6
Adjustment = 0
UseKey = 0x12
---------------------------------

-------参数，一般不需要调整
-------下面的不要动，是以后测试用的
---------------------------------
UseKey = 0x12555555555
Level = 55555555
Decline = 5555555555
Level = 55555555
Decline = 55555555
UseKey = 0x12
Level = 555555555555555555555555555555555
Decline = 5555555555
UseKey = 0x12555555555
Level = 55555555
Decline = 5555555555
Level = 55555555
Decline = 55555555
UseKey = 0x12
--------------------------------------

LeftRightRange = (6 // (LMD * ADS)) + 3 + Adjustment
Decline_range = 8 * LMD

OutputLogMessage("HS-QQqun-       785414446\n")
OutputLogMessage("HS-QQqun-       785906665\n")
--唯一qq：215553307 （其他都是倒卖）

OutputLogMessage("HS-QQ-       215553307\n")
OutputLogMessage("HS-QQ-       215553307\n")

--唯一qq：215553307 （其他都是倒卖）

OutputLogMessage("HS-QQ-       215553307\n")

local switch = false
if (Xian_Yu_ID == "ID:HS-GZS-唯一QQ：215553307 " and Xian_Yu == "HeiShen_Gong_Zuo_Shi售后群：785906665") then
    switch = true
else
    switch = false
end

EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)
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
            Sleep(5)
            MoveMouseTo(v[1], v[2])
            Sleep(1)
            PressMouseButton(1)
            Sleep(v[3])
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

    time = 0
    Fast_Decline = LeftRightRange * 12

    if
        (SwitchButton == 888 and Xian_Yu == "HeiShen_Gong_Zuo_Shi售后群：785906665" and
            Xian_Yu_ID == "ID:HS-GZS-唯一QQ：215553307 ")
     then
        if (IsKeyLockOn("capslock")) then
            switch = true
        else
            switch = false
        end
    else
        if (event == "MOUSE_BUTTON_PRESSED" and arg == SwitchButton) then
            switch = not switch
        end
    end

    if (switch == true) then
        while (IsMouseButtonPressed(3)) do
            if (IsMouseButtonPressed(1)) then
                MoveMouseRelative(LeftRightRange, -LeftRightRange)
                Sleep(Frequency)
                time = time + Frequency
                MoveMouseRelative(-LeftRightRange, LeftRightRange)
                Sleep(Frequency)
                time = time + Frequency
                if (time >= Decline_range) then
                    MoveMouseRelative(0, ((Fast_Decline // 12) + 1))
                    time = 0
                    if (Fast_Decline > 0) then
                        Fast_Decline = Fast_Decline - 2
                    else
                        Fast_Decline = 0
                    end
                end
            end
        end
    end

    --唯一qq：215553307 （其他都是倒卖）
    --售后更新1群：785414446（备注闲鱼昵称申请-更新售后群）
    --售后更新2群：785906665（备注闲鱼昵称申请-更新售后群）
    ---买了倒卖的无售后无更新认准 黑神工作室
    if (Xian_Yu_ID ~= "ID:HS-GZS-唯一QQ：215553307 " or Xian_Yu ~= "HeiShen_Gong_Zuo_Shi售后群：785906665") then
        if (event == "MOUSE_BUTTON_PRESSED" and arg ~= 1) then
            PressAndReleaseKey("escape")
            Sleep(35)
            MoveMouseTo(32767, 37767)
            Sleep(35)
            PressAndReleaseMouseButton(1)
            Sleep(35)
            MoveMouseTo(29000, 44000)
            Sleep(35)
            PressAndReleaseMouseButton(1)
            Sleep(35)
            PressKey("lalt")
            Sleep(35)
            PressAndReleaseKey("f4")
            ReleaseKey("lalt")
        end
    end
end

--唯一qq：215553307 （其他都是倒卖）
--售后更新1群：785414446（备注闲鱼昵称申请-更新售后群）
--售后更新2群：785906665（备注闲鱼昵称申请-更新售后群）
---买了倒卖的无售后无更新认准 黑神工作室
