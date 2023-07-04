-- define the scroll event listener
scrollWatcher = hs.eventtap.new({hs.eventtap.event.types.scrollWheel}, function(e)
    local direction = e:getProperty(hs.eventtap.event.properties.scrollWheelEventDeltaAxis1)

    -- get current mouse position
    local mousePos = hs.mouse.getAbsolutePosition()
    -- get the height of the top panel
    local topPanelHeight = hs.screen.mainScreen():frame().y
    -- if the mouse is in the top panel
    if mousePos.y <= topPanelHeight then
        if direction < 0 then
            -- Scrolling up (inverted), switch to the next desktop
            hs.osascript.applescript('tell application "System Events" to key code 124 using control down')
        elseif direction > 0 then
            -- Scrolling down (inverted), switch to the previous desktop
            hs.osascript.applescript('tell application "System Events" to key code 123 using control down')
        end
    end

    return false -- let the event pass through
end)

-- start the scroll event watcher
scrollWatcher:start()
