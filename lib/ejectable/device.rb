module Ejectable

  # @example
  #   device = Ejectable::Device.new '/dev/cdrom'
  #   device.eject_tray!
  class Device

    # @param [String] name
    def initialize(name)
      @name = name.dup.freeze
    end

    # @return [String]
    def name
      @name.dup
    end

    Ejectable.public_methods(false).grep(/_tray/) do |meth|
      define_method meth do |&block|
        Ejectable.__send__ meth, @name, &block
      end
    end

  end

end