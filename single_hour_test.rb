require_relative 'clock'
require 'test/unit'

class SingleHourTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end


  def test_single_hour_row_OOOO_returns_for_0_hours
    @clock.set_time(0,0,0)

    result = @clock.calculate_time

    assert_equal("OOOO", result.single_hour_row)
  end

  def test_single_hour_row_ROOO_returns_for_1_hours
    @clock.set_time(1,0,0)

    result = @clock.calculate_time

    assert_equal("ROOO", result.single_hour_row)
  end

end
