require_relative 'clock_lamps'

class Clock

  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def calculate_time
    single_minute_row = ""
      @minute.times do
        single_minute_row += "Y"
      end

      until single_minute_row.length == 4 do
        single_minute_row += "O"
      end

    five_minute_row = "OOOOOOOOOOO"
    clock_lamps = ClockLamps.new(single_minute_row, five_minute_row)
    return clock_lamps

  end


end
