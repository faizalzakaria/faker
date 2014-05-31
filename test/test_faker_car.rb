require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerCar < Test::Unit::TestCase

  def setup
    @tester = Faker::Car
  end

  def test_reg_number_mys
    assert @tester.reg_number_mys.match(/[A-Z]{3} [0-9]{4}/)
  end

end
