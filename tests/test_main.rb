require 'minitest/autorun'
require_relative '../main.rb'

class CalculatorTest < Minitest::Test
      def test_add_two_numbers_simple_addition
        calculator = Calculator.new
        assert_equal 5, calculator.add('2,3')
      end
      def test_no_numbers_empty_string
        calculator = Calculator.new
        assert_equal 0, calculator.add('')
      end
      def test_add_multiple_numbers_simple_addition
        calculator = Calculator.new
        assert_equal 157, calculator.add('21,37,42,57')
      end
      def test_add_numbers_simple_addition_different_delimiter
        calculator = Calculator.new
        assert_equal 3, calculator.add("//;\n1;2")
      end
      def test_add_negative_numbers
        calculator = Calculator.new
        assert_equal 3, calculator.add('2,-3,4')
      end
      def test_add_Multiple_negative_numbers
        calculator = Calculator.new
        assert_equal -9, calculator.add('-2,-3,-4')
      end
end