defmodule Fibonacci do
  def of(n), do: Cache.load(n, &calc/1)

  def calc(0), do: 0
  def calc(1), do: 1
  def calc(n), do: of(n - 1) + of(n - 2)
end
