# frozen_string_literal: true

class Fibonacci
  def initialize
    @cached_array = [0, 1]
  end

  def iterative_fib(num)
    fib_array = (1..num).inject([0, 1]) { |arr| arr << arr.last(2).sum }
    fib_array[num]
  end

  def recursive_fib(num)
    return @cached_array[num] if @cached_array[num]

    @cached_array[num] = recursive_fib(num - 1) + recursive_fib(num - 2)
  end
end
