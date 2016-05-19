require_relative 'clock_lamps'

class Clock

  FOUR_LIGHT_ROW = 4
  ELEVEN_LIGHT_ROW = 11
  YELLOW_LIGHTS = "YYYY"
  RED_LIGHTS = "RRRR"
  MIXED_LIGHTS = "YYRYYRYYRYY"

  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def calculate_time

      single_minute_row = @minute % 5
      five_minute_row = @minute / 5
      single_hour_row = @hour

      # def switch_lights_on(color, number_lights)
      #   color * number_lights
      # end

      def switch_lights_on(light_pattern, number_lights)
        light_pattern[0,number_lights]
      end

      single_minute_lights = switch_lights_on(YELLOW_LIGHTS, single_minute_row)
      single_hour_lights = switch_lights_on(RED_LIGHTS, single_hour_row)

      def pad_lights_right(desired_length, current_length)
          length_to_pad = desired_length - current_length
          "O" * length_to_pad
      end

      single_minute_lights += pad_lights_right(FOUR_LIGHT_ROW, single_minute_row)
      single_hour_lights += pad_lights_right(FOUR_LIGHT_ROW, single_hour_row)


      five_minute_lights = switch_lights_on(MIXED_LIGHTS,five_minute_row)
      five_minute_lights += pad_lights_right(ELEVEN_LIGHT_ROW, five_minute_row)



      clock_lamps = ClockLamps.new(single_minute_lights, five_minute_lights, single_hour_lights)
      return clock_lamps

  end


end
