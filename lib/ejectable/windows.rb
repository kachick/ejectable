require 'dl/import'

module Ejectable

  # @return [String]
  DEFAULT_DEVICE_NAME = 'cdaudio'.freeze

  extend DL::Importer
  
  # @group for DL
  
  dlload 'winmm'
  typealias 'DWORD', 'unsigned long'
  typealias 'HANDLE', 'unsigned long'
  typealias 'LPCSTR', 'unsigned char *'
  typealias 'LPTSTR', 'const char *'
  typealias 'UINT', 'unsigned int'  
  extern 'DWORD mciSendString(LPCSTR, LPTSTR, UINT, HANDLE)'
  
  # @endgroup

  module_function

  # @param [String] devname
  # @return [Boolean]
  def eject_tray(devname=DEFAULT_DEVICE_NAME)
    mciSendString "set #{devname} door open", nil, 0, 0
  end

  # @param [String] devname
  # @return [Boolean]
  # @raise [TrayHandleError] if failed to open tray
  def close_tray(devname=DEFAULT_DEVICE_NAME)
    mciSendString "set #{devname} door closed", nil, 0, 0
  end

end