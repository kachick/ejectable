# Copyight (c) 2013 Kenichi Kamiya

module Ejectable

  class TrayHandleError < StandardError; end

  module_function

  # @param [String] devname
  # @return [Boolean]
  def eject_tray(devname=nil)
    system("eject #{devname ? " #{devname}" : ''}")
  end

  # @param [String] devname
  # @return [void]
  # @raise [TrayHandleError] if failed to eject tray
  # @yield close tray when exit block
  # @yieldreturn [void]
  def eject_tray!(devname=nil, &block)
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
  # @return [Boolean]
  # @raise [TrayHandleError] if failed to open tray
  def close_tray(devname=nil)
    system("eject -t#{devname ? " #{devname}" : ''}")
  end

  # @param [String] devname
  # @return [void]
  def close_tray!(devname=nil)
    close_tray(devname) || raise(TrayHandleError)
    nil
  end

end

require_relative 'ejectable/device'