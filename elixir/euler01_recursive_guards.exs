defmodule Euler.Problem1 do

  def solver(n) when n <= 0 do 0 end

  def solver(n) when ((rem(n, 3) == 0) or (rem(n, 5) == 0)) do
    n + solver(n-1)
  end

  def solver(n) do
     solver(n-1)
  end

  def solve() do
    solve(1000)
  end

  def solve(limit) do
    solver(limit-1)
  end

end

IO.puts(Euler.Problem1.solve())
