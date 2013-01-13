require_relative 'helper'

module Test_Ejectable

  class Test_Topmodule < Test::Unit::TestCase

    def test_methods
      assert(([:close_tray, :close_tray!, :eject_tray, :eject_tray!] \
             - Ejectable.public_methods).empty?)
    end

  end

  class Test_Device < Test::Unit::TestCase

    def test_methods
      assert(([:close_tray, :close_tray!, :eject_tray, :eject_tray!, :name] \
             - Ejectable::Device.public_instance_methods(false)).empty?)
    end

  end

end