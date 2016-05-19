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
      five_minute_lights = ""

      single_minute_lights = ("Y" * single_minute_row)

      def pad_lights_right(desired_length, current_length)
          length_to_pad = desired_length - current_length
          "O" * length_to_pad
      end

      single_minute_lights += pad_lights_right(4, single_minute_row)

      for num in 1...five_minute_row + 1
          if num % 3 == 0
            five_minute_lights += "R"
          else
            five_minute_lights += "Y"
          end
      end

    five_minute_lights += pad_lights_right(11, five_minute_row)

    single_hour_lights = ("R" * single_hour_row)

    single_hour_lights += pad_lights_right(4, single_hour_row)


    clock_lamps = ClockLamps.new(single_minute_lights, five_minute_lights, single_hour_lights)
    return clock_lamps

  end


end
