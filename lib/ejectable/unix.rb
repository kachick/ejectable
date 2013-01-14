module Ejectable

  # @return [String]
  DEFAULT_DEVICE_NAME = ''.freeze

  module_function

  # @param [String] devname
  # @return [Boolean]
  def eject_tray(devname=DEFAULT_DEVICE_NAME)
    system("eject #{devname}")
  end

  # @param [String] devname
  # @return [Boolean]
  # @raise [TrayHandleError] if failed to open tray
  def close_tray(devname=DEFAULT_DEVICE_NAME)
    system("eject -t #{devname}")
  end

end