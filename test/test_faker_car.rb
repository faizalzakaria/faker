require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerCar < Test::Unit::TestCase

  def setup
    @tester = Faker::Car
  end

  def test_resigration_number_malaysia
    assert @tester.registration_number_malaysia.match(/[A-Z]{3} [0-9]{4}/)
  end

end
