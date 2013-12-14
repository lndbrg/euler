Enum.filter(1..1000-1, fn (n) -> rem(n,3) == 0 || rem(n,5) == 0 end) |> Enum.reduce(0, &(&1+&2))
