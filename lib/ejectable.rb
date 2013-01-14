# Copyight (c) 2013 Kenichi Kamiya

require 'rbconfig'

case host_os = RbConfig::CONFIG.fetch('host_os')
when /darwin/
  raise "unsupported os: #{host_os}"
when /mswin(?!ce)|mingw|cygwin|bccwin/
  require_relative 'ejectable/windows'
else
  require_relative 'ejectable/unix'
end

module Ejectable

  class TrayHandleError < StandardError; end

  module_function

  # @param [String] devname
  # @return [void]
  # @raise [TrayHandleError] if failed to eject tray
  # @yield close tray when exit block
  # @yieldreturn [void]
  def eject_tray!(devname=DEFAULT_DEVICE_NAME, &block)
    eject_tray(devname) || raise(TrayHandleError)

    if block_given?
      begin
        block.call
      ensure
        close_tray! devname
      end
    end

    nil
  end

  # @param [String] devname
  # @return [void]
  def close_tray!(devname=DEFAULT_DEVICE_NAME)
    close_tray(devname) || raise(TrayHandleError)
    nil
  end

end

require_relative 'ejectable/device'