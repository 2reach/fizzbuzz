require 'test/unit'
require_relative 'FizzBuzz.rb'

class TestFizzBuzz < Test::Unit::TestCase
  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_divisible_by_3_and_not_5
    i = 1
    100.times do
      assert(@fizzbuzz[i-1] == "Fizz") if i % 3 == 0 && i % 5 != 0
      i+=1
    end
  end

  def test_divisible_by_5_and_not_3
    i = 1
    100.times do
      assert(@fizzbuzz[i-1] == "Buzz") if i % 5 == 0 && i % 3 != 0
      i+=1
    end
  end

  def test_divisible_by_3_and_5
    i = 1
    100.times do
      assert(@fizzbuzz[i-1] == "FizzBuzz") if i % 5 == 0 && i % 3 == 0
      i+=1
    end
  end

  def test_not_divisible_by_3_nor_5
    i = 1
    100.times do
      assert(@fizzbuzz[i-1] == i) if i % 5 != 0 && i % 3 != 0
      i+=1
    end
  end
end