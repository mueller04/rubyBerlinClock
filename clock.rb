class Clock

  def set_time(hour, minute, second)
    @hour = hour
    @minute = minute
    @second = second
  end

  def calculate_time
    minutes_row = ""
      @minute.times do
        minutes_row += "Y"
      end

      until minutes_row.length == 4 do
        minutes_row += "O"
      end
    return minutes_row
  end


end
