require_relative 'clock'
require 'test/unit'

class ClockTest < Test::Unit::TestCase

  def test_OOOO_returned_for_0_minutes
      clock = Clock.new
      clock.set_time(0,0,0)
      result = clock.calculate_time
      assert_equal("OOOO", result)
  end

  def test_YOOO_returned_for_1_minutes
      clock = Clock.new
      clock.set_time(0,1,0)
      result = clock.calculate_time
      assert_equal("YOOO", result)
  end

  def test_YYYO_returned_for_3_minutes
      clock = Clock.new
      clock.set_time(0,3,0)
      result = clock.calculate_time
      assert_equal("YYYO", result)
  end



end
