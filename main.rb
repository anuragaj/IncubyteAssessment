class Calculator
  def initialize
    #puts "Calculator ready!"
  end

  def add(numbers)
    return 0 if numbers.nil? || numbers == ""
    delimeter = ','
    if numbers.start_with?("//")
        delimeter = numbers[2]
        puts 'delimeter changed' + delimeter
    end
    number_array = numbers.split(delimeter).map(&:to_i)
    pp number_array
    return number_array.sum
  end
end