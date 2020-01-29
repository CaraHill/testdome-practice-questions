def fib(num)
  fib_array = (1..num).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }
  fib_array[num]
end
