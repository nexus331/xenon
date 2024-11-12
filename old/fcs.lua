term.clear()
local width, height = term.getSize()

function redraw()
    term.clear()
    term.setCursorPos(1, 1)
    term.write("Current Size: " .. width .. "x" .. height)
    term.setCursorPos(1, 2)
    term.write("Press CTRL+C to exit.")
end

redraw()

while true do
    local event, param = os.pullEvent()
    if event == "term_resize" then
        width, height = term.getSize()
        redraw()
    end
end