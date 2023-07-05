

function OnEvent(event, arg)

    if (event == "PROFILE_ACTIVATED") then
      EnablePrimaryMouseButtonEvents(true)
    end
    ejecuta = 0
    if (IsMouseButtonPressed(3)) then
      repeat
        --OutputLogMessage("esperando izq\n")
        if (IsMouseButtonPressed(1)) then
          --OutputLogMessage("presionado izq\n")
          glittery = 4------------Tamaño del circulo
          --valores mayores, hacen circulos mas grandes
          sleepval = 8------------Tiempo del circulo
          --valores menores hacen mas rapido el script hasta 0
          
          ---Variables para circulo-----
          ajuste   = 1
          glitterx = 0
          x1ajus   = glittery 
          x1glit   = glittery-1
          y1glit   = glittery-1+glittery
          x2glit   = glittery-1+glittery-1
          y2glit   = glittery-1+glittery-1+glittery
          x3glit   = glittery-1+glittery-1+glittery-1
          x4glit   = glittery-1+glittery-1+glittery-1+glittery-1
              
          repeat
      
            --Instrucciones cuando presiono boton izquierdo
            varx = 0
            vary = 0
            
            if(ajuste<x1ajus) then
              varx = -1
              vary = -1
              --OutputLogMessage("menor 6\n")
            elseif (ajuste>x1glit and ajuste <y1glit) then
              varx =1
              vary =-1
              --OutputLogMessage("entre 6 y 12\n")
            elseif (ajuste>x2glit    and ajuste <y2glit) then
              varx =1
              vary =1
              --OutputLogMessage("entre 12 y 18\n")
            elseif (ajuste>x3glit    and ajuste <x4glit) then
              varx = -1
              vary = 1
              --OutputLogMessage("entre 18 y 24\n")
            elseif (ajuste==x4glit) then
              varx =-1
              vary =1
              ajuste = 0
              --OutputLogMessage("es 24\n")
            end
          
            MoveMouseRelative(glitterx ,glittery )
            ajuste  = ajuste+1
            glitterx = glitterx+varx 
            glittery = glittery +vary 
      
            Sleep(sleepval)
            --Fin de instrucciones cuando presionas boton izquierdo
      
            until (not IsMouseButtonPressed(1))
          end
      Sleep(250)    
      until (not IsMouseButtonPressed(3) or ejecuta>0)      
    end
    Sleep(60)----Sleep para esperar que el script pueda ejecutarse, ver documentacion
    if (IsMouseButtonPressed(3)==false or IsMouseButtonPressed(1)==false) then
        ejecuta = ejecuta+1
    end 
  
  end