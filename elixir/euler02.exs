defmodule Euler.Problem2 do

  def solve() do
    solve(1, 2, 0)
  end

  def solve(_fib2, fib1, sum) when fib1 > 4_000_000 do
    sum
  end

  def solve(fib2, fib1, sum) when rem(fib1,2) == 0 do
    solve(fib1, fib1+fib2, sum+fib1)
  end

  def solve(fib2, fib1, sum) do
    solve(fib1, fib1+fib2, sum)
  end

end

IO.puts(Euler.Problem2.solve())
