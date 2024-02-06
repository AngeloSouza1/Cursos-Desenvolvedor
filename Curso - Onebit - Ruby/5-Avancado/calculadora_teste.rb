require 'minitest/autorun'

class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    raise ArgumentError, "Divisão por zero não é permitida" if b.zero?
    a / b
  end
end

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_addition
    assert_equal 5, @calculator.add(2, 3)
    assert_equal -1, @calculator.add(-2, 1)
  end

  def test_subtraction
    assert_equal 1, @calculator.subtract(3, 2)
    assert_equal -5, @calculator.subtract(-2, 3)
  end

  def test_multiplication
    assert_equal 6, @calculator.multiply(2, 3)
    assert_equal -6, @calculator.multiply(2, -3)
  end

  def test_division
    assert_equal 2, @calculator.divide(6, 3)
    assert_equal -2, @calculator.divide(6, -3)
    assert_raises(ArgumentError) { @calculator.divide(6, 0) }
  end
end
