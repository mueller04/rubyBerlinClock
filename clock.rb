class Clock

  YELLOW_LIGHT = "Y"
  YELLOW_LIGHTS = "YYYY"
  RED_LIGHTS = "RRRR"
  MIXED_LIGHTS = "YYRYYRYYRYY"

  def convert_to_berlin_clock(hour, minute, second)

      light_row_collection = {single_minute: [YELLOW_LIGHTS, get_single_lights_on(minute)],
        single_hour: [RED_LIGHTS, get_single_lights_on(hour)],
        five_minute: [MIXED_LIGHTS, get_five_lights_on(minute)],
        five_hour: [RED_LIGHTS, get_five_lights_on(hour)],
        second: [YELLOW_LIGHT, second % 2 == 0 ? 1 : 0]}

      berlin_clock_lamps = {}
      light_row_collection.each do |time_unit, time_values|
          berlin_clock_lamps[time_unit] = get_lights_for_row(time_values[0], time_values[1])
      end

      return berlin_clock_lamps

  end

private

  def get_single_lights_on(unit)
      unit % 5
  end

  def get_five_lights_on(unit)
      unit / 5
  end



  def get_lights_for_row(light_pattern, number_lights)
      return switch_lights_on(light_pattern, number_lights)+ pad_lights_right(light_pattern, number_lights)
  end

  def switch_lights_on(light_pattern, number_lights)
    light_pattern[0,number_lights]
  end

  def pad_lights_right(light_pattern, current_length)
      length_to_pad = light_pattern.length - current_length
      "O" * length_to_pad
  end


end
