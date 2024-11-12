local basalt = require("basalt") --> Loads the Basalt framework API


local main = basalt.createFrame():setBackground(colors.black)
local mainlabel = main:addLabel()
mainlabel:setText("Xenon Operating System v0.1"):setForeground(colors.white)

local launch = main:addButton():setText("Launch"):setBackground(colors.green):setSize(10,3):setPosition(30,17)

launch:onClick(function(self,event,button,x,y)
    if(event=="mouse_click")and(button==1)then
        shell.execute("rednet-himars.lua")
    end
end)

local debugb = main:addButton():setText("Exit"):setBackground(colors.red):setSize(10,3):setPosition(42,17)

debugb:onClick(function(self,event,button,x,y)
    if(event=="mouse_click")and(button==1)then
        shell.execute("shell")
    end
end)

local sub 
main:addFrame():setBackground(colors.lightGray):setPosition(2,3):setSize(20,15)

basalt.autoUpdate() -- As soon as we call basalt.autoUpdate, the event and draw handlers will listen to any incoming events (and draw if necessary)
