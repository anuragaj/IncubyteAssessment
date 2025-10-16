require 'minitest/autorun'
require_relative '../main.rb'

class CalculatorTest < Minitest::Test
      def test_add_two_numbers
        calculator = Calculator.new
        assert_equal 5, calculator.add('2,3')
      end
      def test_returns_zero_for_empty_string
        calculator = Calculator.new
        assert_equal 0, calculator.add('')
      end
      def test_add_multiple_numbers
        calculator = Calculator.new
        assert_equal 157, calculator.add('21,37,42,57')
      end
      def test_add_with_custom_delimiter
        calculator = Calculator.new
        assert_equal 3, calculator.add("//;\n1;2")
      end
      def test_raises_on_negative_number
        calculator = Calculator.new
        assert_raises ArgumentError do
          calculator.add('2,-3,4')
        end
      end
      def test_raises_on_multiple_negative_numbers
        calculator = Calculator.new
        assert_raises ArgumentError do
          calculator.add('-2,-3,-4')
        end
      end
end