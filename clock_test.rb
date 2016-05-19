require_relative 'clock'
require 'test/unit'

class ClockTest < Test::Unit::TestCase

  def setup
    @clock = Clock.new
  end

  def test_OOOO_returns_for_0_minutes
      @clock.set_time(0,0,0)

      result = @clock.calculate_time

      assert_equal("OOOO", result.single_minute_row)
  end

  def test_YOOO_returns_for_1_minutes
      @clock.set_time(0,1,0)

      result = @clock.calculate_time

      assert_equal("YOOO", result.single_minute_row)
  end

  def test_YYYO_returns_for_3_minutes
      @clock.set_time(0,3,0)

      result = @clock.calculate_time

      assert_equal("YYYO", result.single_minute_row)
  end

  def test_YYYY_returns_for_4_minutes
      @clock.set_time(0,4,0)

      result = @clock.calculate_time

      assert_equal("YYYY", result.single_minute_row)
  end

  def test_OOOO_returns_for_5_minutes
      @clock.set_time(0,5,0)

      result = @clock.calculate_time

      assert_equal("OOOO", result.single_minute_row)
  end

  def test_fiveminuterow_OOOOOOOOOOO_returns_for_0_minutes
    @clock.set_time(0,0,0)

    result = @clock.calculate_time


    assert_equal("OOOOOOOOOOO", result.five_minute_row)
  end

  def test_fiveminuterow_YYOOOOOOOOO_returns_for_12_minutes
    @clock.set_time(0,12,0)

    result = @clock.calculate_time

    assert_equal("YYOOOOOOOOO", result.five_minute_row)
  end

  def test_fiveminuterow_YYROOOOOOOO_returns_for_16_minutes
    @clock.set_time(0,16,0)

    result = @clock.calculate_time

    assert_equal("YYROOOOOOOO", result.five_minute_row)
  end

  def test_fiveminuterow_YYRYYRYYRYY_returns_for_59_minutes
    @clock.set_time(0,59,0)

    result = @clock.calculate_time

    assert_equal("YYRYYRYYRYY", result.five_minute_row)
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
