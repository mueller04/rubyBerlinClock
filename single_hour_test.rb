require_relative 'clock'
require 'test/unit'

class SingleHourTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end


  def test_single_hour_row_OOOO_returns_for_0_hours

    result = @clock.convert_to_berlin_clock(0,0,0)

    assert_equal("OOOO", result.single_hour_row)
  end

  def test_single_hour_row_ROOO_returns_for_1_hours

    result = @clock.convert_to_berlin_clock(1,0,0)

    assert_equal("ROOO", result.single_hour_row)
  end

end
