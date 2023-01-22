defmodule Cache.Runtime.Server do
  @me __MODULE__

  def start_link() do
    Agent.start_link(fn -> %{} end, name: @me)
  end

  def load(key, calc) do
    Agent.get(@me, & &1[key])
    |> value(key, calc)
  end

  def value(nil, key, calc) do
    v = calc.(key)
    Agent.update(@me, &Map.put(&1, key, v))
    v
  end

  def value(v, _key, _calc), do: v
end
