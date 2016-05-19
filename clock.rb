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
      single_hour_row = @hour

      single_hour_lights = ""
      single_minute_lights = ""
      five_minute_lights = ""

      unless single_minute_row > 4
        single_minute_lights = ("Y" * single_minute_row)
      end


      while single_minute_lights.length < 4
          single_minute_lights += "O"
      end


      for num in 1...five_minute_row + 1
          if num % 3 == 0
            five_minute_lights += "R"
          else
            five_minute_lights += "Y"
          end
      end

    while five_minute_lights.length < 11
        five_minute_lights += "O"
    end

    single_hour_lights = ("R" * single_hour_row)

    while single_hour_lights.length < 4
        single_hour_lights += "O"
    end


    clock_lamps = ClockLamps.new(single_minute_lights, five_minute_lights, single_hour_lights)
    return clock_lamps

  end


end
