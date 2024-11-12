rednet.open("front")

while true do
 id, message = rednet.receive()
 if id == 8 and message == "Test" then
    redstone.setOutput("back", true)
    end 
    sleep(0.3)
    redstone.setOutput("back", false)
end
