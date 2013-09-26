class FizzBuzz < Array

  def initialize
    for i in 1..100
      if i % 3 == 0 && i % 5 == 0
        self[i-1] = "FizzBuzz"
      elsif i % 3 == 0
        self[i-1] = "Fizz"
      elsif i % 5 == 0
        self[i-1] = "Buzz"
      else
        self[i-1] = i
      end
    end
  end

end