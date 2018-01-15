local mod = {}

function mod:init()
  -- create a USB watcher that turns off wifi when 
  -- external thunderbolt display is present.
  watcher = hs.usb.watcher.new(function (event)
    if event["productType"] == "Apple Thunderbolt Display" then
      if event["eventType"] == "added" then
        hs.wifi.setPower(false)
      else
        hs.wifi.setPower(true)
      end
    end
  end)
  -- start the watcher.
  watcher:start()
end

return mod
