
----------
--以下加密
if(moshi == 0)then
Frequency = 1
Range = 16
Decline = 9999
else if(moshi == 1)then
Frequency = 5
Range = 19
Decline = 4
end
end


QQ = "2784300736"
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
    sleep_elapsed = sleep_end_time-sleep_start_time

    until(sleep_elapsed>t)
end




    
--抖枪   
    time  = 0
    switch = true  
        while(0)
        do
        time2  = 0
        
        if (SwitchButton ==888  )then
            if (IsKeyLockOn("capslock")) then
                switch = true
            else
                switch = false
            end
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == SwitchButton) then 
            PressAndReleaseKey("capslock")
        end

        
            if ( IsMouseButtonPressed(1) and Kai_Jing == 2) then
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
                if( time >= Decline )then                 
                    MoveMouseRelative(0, 6)  
                        if( time2 <= 300 )then   
                        MoveMouseRelative(0, 6)
                            if( time2 <= 200 )then                 
                            MoveMouseRelative(0,6) 
                                if( time2 <= 100 )then                 
                                MoveMouseRelative(0,6)             
                                end               
                            end
                        end   
                end
               until(not IsMouseButtonPressed(1) )  
           elseif(switch == true and Kai_Jing == 1)then
              while(IsMouseButtonPressed(3))do
                  if ( IsMouseButtonPressed(1)   ) then   
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


