--R是抖动幅度，E是压枪幅度，P是狙击枪压枪口上跳
R = 6
E = 0
P = 0
switch=1
EnablePrimaryMouseButtonEvents(true);
function OnEvent(event, arg)
OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
    if (switch==0) then
      switch=1
      else
      switch=0
    end
  end
  if (IsMouseButtonPressed(3)) then
      if (arg == 1 and switch == 1) then
      MoveMouseRelative(0,P)
      repeat
      Sleep(10)
      MoveMouseRelative(-R,R)
      Sleep(10)
      MoveMouseRelative(R,R)
      Sleep(10)
      MoveMouseRelative(R,-R)
      Sleep(10)
      MoveMouseRelative(-R,-R)
      Sleep(10)
      MoveMouseRelative(0,E)
      until not IsMouseButtonPressed(1)
    end
  end
end