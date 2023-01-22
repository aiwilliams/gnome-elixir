defmodule FibonacciTest do
  use ExUnit.Case

  test "greets the world" do
    assert Fibonacci.of(0) == 0
    assert Fibonacci.of(1) == 1
    assert Fibonacci.of(2) == 1
    assert Fibonacci.of(3) == 2
    assert Fibonacci.of(4) == 3
    assert Fibonacci.of(10) == 55
  end
end
