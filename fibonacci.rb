# frozen_string_literal: true

class Fibonacci
  def fib(num)
    fib_array = (1..num).inject([0, 1]) { |arr| arr << arr.last(2).sum }
    fib_array[num]
  end
end
