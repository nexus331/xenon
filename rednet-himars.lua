rednet.open("top")
print("Launch Sequence Initiated.")
sleep(0.8)
rednet.send(5, "Test")
sleep(1)
rednet.send(6, "Test")
sleep(1)
rednet.send(7, "Test")
