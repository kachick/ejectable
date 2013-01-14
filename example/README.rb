$VERBOSE = true

require_relative '../lib/ejectable'

device = Ejectable::Device.new
device.eject_tray! do
  sleep 5
end