class Calculator
  def initialize
    #puts "Calculator ready!"
  end

  def add(numbers)
    return 0 if numbers.nil? || numbers == ""
    delimeter = ','
    
    if numbers.start_with?("//")
        delimeter = numbers[2]
    end
    
    number_array = numbers.split(delimeter).map(&:to_i)
    
    if number_array.any?(&:negative?)
        negative_numbers = number_array.select { |num| num < 0 }
        raise ArgumentError, "Negative numbers not allowed: #{negative_numbers.join(', ')}"
    end
    return number_array.sum
  end
end