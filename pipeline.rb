def pipeline(*funcs)
  ->(arg) {
    # arg = num
    funcs.reduce(arg) { |num, func| func.call(num) }
  }
end

fun = pipeline(-> (x) { x * 3 }, -> (x) { x + 1 }, -> (x) { x / 2 })
puts fun.call(3) # should print 5
puts fun.call(5) # should print 8
puts fun.call(7) # should print 11
