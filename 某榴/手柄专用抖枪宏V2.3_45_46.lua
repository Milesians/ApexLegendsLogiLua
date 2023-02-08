Xian_Yu_ID = "ID:tb305645003" 
Xian_Yu = "Hong_Shi_Liu_De_Ou_Zhou_Bai_La_45_46" 
FangWei = "请认准作者闲鱼ID:tb305645003_昵称:红石榴的欧洲白蜡45_46" 


Kai_Jing = 1


Frequency = 5
LeftRightRange = 19
Decline = 4


--------------------------------------


SwitchButton = 888

zuozhe = {228,189,156,232,128,133,239,188,154,233,157,162,229,140,133,240,159,141,158}
banben = {231,137,136,230,156,172,239,188,154,230,137,139,230,159,132,228,184,147,231,148,168}
xianyunicheng = {233,151,178,233,177,188,230,152,181,231,167,176,239,188,154,231,186,162,231,159,179,230,166,180,231,154,132,230,172,167,230,180,178,231,153,189,232,156,161}
xianyuid = {233,151,178,233,177,188}
quanwangdujia = {229,133,168,231,189,145,231,139,172,229,174,182,230,137,139,230,159,132,229,174,143,239,188,140,229,128,146,229,141,150,230,151,160,229,148,174,229,144,142,230,151,160,230,155,180,230,150,176,239,188,129}
xuyao = {233,156,128,232,166,129,229,133,182,228,187,150,229,174,143,232,175,183,232,129,148,231,179,187}
qun = {231,190,164}
tiyan = {229,133,141,232,180,185,228,189,147,233,170,140}
test = {240,159,142,137,240,159,142,137}

EnablePrimaryMouseButtonEvents(true)   


function OnEvent(event, arg)  
ClearLog()
function BetterSleep(t)
  sleep_start_time = GetRunningTime()
  repeat
    sleep_end_time = GetRunningTime()
    sleep_elapsed = sleep_end_time-sleep_start_time

    until(sleep_elapsed>t)
end

OutputLogMessage("\n=================================================================\n" )
OutputLogMessage("||    "..Chinese(zuozhe).."         "..Chinese(xianyunicheng).."45_46    ||\n" )
OutputLogMessage("||    "..Chinese(banben).."V2.3    "..Chinese(xianyuid).."ID:tb305645003                 ||\n" )
OutputLogMessage("||      "..Chinese(test)..Chinese(quanwangdujia)..Chinese(test).."          ||\n" )
--OutputLogMessage("||          "..Chinese(xuyao).."QQ"..Chinese(qun).."162133037"..Chinese(tiyan).."              ||\n" )
OutputLogMessage("=================================================================" )



--换甲  
    function YJHJ()
        for i=40700,53933,4411 do
            MoveMouseTo(12909, i)
            Sleep(13)  
            PressAndReleaseMouseButton(1)
            Sleep(13)
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
    
    
--抖枪   
    time  = 0
    switch = true  
        while(0)
        do
        time2  = 0
        
        if (SwitchButton == 888 and Xian_Yu == "Hong_Shi_Liu_De_Ou_Zhou_Bai_La_45_46"  and Xian_Yu_ID == "ID:tb305645003" )then
            if (IsKeyLockOn("capslock")) then
                switch = true
            else
                switch = false
            end
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == SwitchButton) then 
            PressAndReleaseKey("capslock")
        end

        
            if ( IsMouseButtonPressed(1) and switch == true and Xian_Yu == "Hong_Shi_Liu_De_Ou_Zhou_Bai_La_45_46"  and Xian_Yu_ID == "ID:tb305645003" and Kai_Jing == 2) then
            repeat   
                MoveMouseRelative(-Range, Range+10)
                BetterSleep(Frequency)
                time2 = time2 + Frequency
                MoveMouseRelative(Range, -Range-10)   
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range+10)
                BetterSleep(Frequency)
                time2 = time2 + Frequency
                MoveMouseRelative(Range, -Range-10)   
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range+10)
                BetterSleep(Frequency)
                time2 = time2 + Frequency
                MoveMouseRelative(Range, -Range-10)   
                BetterSleep(Frequency)
                time = time + 1
                time2 = time2 + Frequency
                if( time >= Decline )then                 
                    MoveMouseRelative(0, 6)  
                        if( time2 <= 300 )then   
                        MoveMouseRelative(0, 6)
                            if( time2 <= 200 )then                 
                            MoveMouseRelative(0, 6) 
                                if( time2 <= 100 )then                 
                                MoveMouseRelative(0, 6)             
                                end               
                            end
                        end   
                end
               until(not IsMouseButtonPressed(1) )  
           elseif(switch == true and Kai_Jing == 1)then
              while(IsMouseButtonPressed(3))do
                  if ( IsMouseButtonPressed(1)    and Xian_Yu == "Hong_Shi_Liu_De_Ou_Zhou_Bai_La_45_46"  and Xian_Yu_ID == "ID:tb305645003") then   
                      MoveMouseRelative(-Range, Range+10)
                BetterSleep(Frequency)
                time2 = time2 + Frequency
                MoveMouseRelative(Range, -Range-10)   
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range+10)
                BetterSleep(Frequency)
                time2 = time2 + Frequency
                MoveMouseRelative(Range, -Range-10)   
                BetterSleep(Frequency)
                MoveMouseRelative(-Range, Range+10)
                BetterSleep(Frequency)
                time2 = time2 + Frequency
                MoveMouseRelative(Range, -Range-10)   
                BetterSleep(Frequency)
                time = time + 1
                time2 = time2 + Frequency
                if( time >= Decline )then                 
                MoveMouseRelative(0, 6)  
                    if( time2 <= 300 )then   
                    MoveMouseRelative(0, 6)
                        if( time2 <= 200 )then                 
                        MoveMouseRelative(0, 6) 
                            if( time2 <= 100 )then                 
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

function Chinese(a)
    local b = ""
    for i=1 , #a  do
        b = b..string.char(a[i])        
    end
    return b
end