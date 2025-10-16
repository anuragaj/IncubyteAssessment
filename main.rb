class Calculator
  def initialize
    #puts "Calculator ready!"
  end

  def add(numbers)
    number_array = numbers.split(',').map(&:to_i)
    if(number_array.length == 0)
        return 0 
    end
  end
end