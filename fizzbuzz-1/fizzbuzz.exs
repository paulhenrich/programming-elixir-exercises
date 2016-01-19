buzziness = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz = fn
  (n) -> buzziness.( rem(n, 3), rem(n, 5), n)
end

IO.puts fizzbuzz.(1)
IO.puts fizzbuzz.(3)
IO.puts fizzbuzz.(5)
IO.puts fizzbuzz.(15)
IO.puts fizzbuzz.(16)
