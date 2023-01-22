defmodule Procs do
  def hello(what_to_say) do
    receive do
      msg ->
        IO.puts("#{what_to_say} #{inspect msg}")
    end
    hello(what_to_say)
  end
end

defmodule Fib do
  def start do
    {:ok, pid} = Agent.start_link(fn -> %{0 => 0, 1 => 1} end)
    pid
  end

  def of(fib, n) do
    case Agent.get(fib, &(&1[n])) do
      nil ->
        n1 = Fib.of(fib, n-1)
        n2 = Fib.of(fib, n-2)
        v = n1 + n2
        Agent.update(fib, fn state -> Map.put(state, n, v) end)
        v
      v -> v
    end
  end
end
