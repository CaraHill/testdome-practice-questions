def fib(num)
  fib_array = (1..num).inject([0, 1]) { |arr| arr << arr.last(2).inject(:+) }
  fib_array[num]
end
