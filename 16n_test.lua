local _16n = include("lib/_16n")

function init()
  _16n.init(_16n_slider_callback)
end

function _16n_slider_callback(midi_msg)
  local slider_id = _16n.cc_2_slider_id(midi_msg.cc)
  local v = midi_msg.val

  print("slider #"..slider_id.." just got its value changed to "..v)
end
