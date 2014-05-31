require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerLoaction < Test::Unit::TestCase

  def setup
    @tester = Faker::Location
  end

  def test_latitude
    assert (@tester.latitude - @tester.ref_latitude).abs <= 0.5
  end

  def test_longitude
    assert (@tester.longitude - @tester.ref_longitude).abs <= 0.5
  end
end
