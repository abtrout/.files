local mod = {}

function mod:init ()
  -- create an audio device watcher to detect audio output
  -- device switching and decrease volume to 0.
  hs.audiodevice.watcher.setCallback(function (evt)
    audioOut = hs.audiodevice.defaultOutputDevice()
    if evt == "dOut" and audioOut ~= nil then
        audioOut:setVolume(0)
        hs.alert.show("Muted audio output")
    end
  end)
  -- start the audio device watcher
  hs.audiodevice.watcher.start()
end

return mod
