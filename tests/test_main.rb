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
end