# clock.rb
def clock(hours = 0, minutes = 0, seconds = 0)

  time = [hours, minutes, seconds]
  max_value = [23, 59, 59]
  time.each_with_index do |field, index|
    if field > max_value[index]
      raise ArgumentError.new("#{field} is too large")
    elsif field < 0
      raise ArgumentError.new("#{field} cannot be negative")
    end
  end


  time_strings = time.map do |value|
    if value == 0 || value == nil
      "00"
    elsif value < 10
      "0#{value}"
    else
      "#{value}"
    end
  end
  return "#{time_strings[0]}:#{time_strings[1]}:#{time_strings[2]}"
end
