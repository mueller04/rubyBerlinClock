require_relative 'clock_lamps'

class Clock

  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def calculate_time

      single_minute_row = @minute % 5
      five_minute_row = @minute / 5

      single_minute_lights = ""
      five_minute_lights = ""

      unless single_minute_row > 4
        single_minute_lights = ("Y" * single_minute_row)
      end

      while single_minute_lights.length < 4
          single_minute_lights += "O"
      end

      five_minute_lights = ("Y" * five_minute_row)


    while five_minute_lights.length < 11
        five_minute_lights += "O"
    end


    clock_lamps = ClockLamps.new(single_minute_lights, five_minute_lights)
    return clock_lamps

  end


end
