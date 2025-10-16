require 'minitest/autorun'
require_relative '../main.rb'

class CalculatorTest < Minitest::Test
      def test_add_two_numbers
        calculator = Calculator.new
        assert_equal 5, calculator.add(2, 3)
      end
end