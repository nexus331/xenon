print("WARNING! IMARS ACTIVATED")
redstone.setOutput("back", true)
sleep(0.5)
redstone.setOutput("back", false)
shell.execute("himars.lua")