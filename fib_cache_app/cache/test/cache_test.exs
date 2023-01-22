defmodule CacheTest do
  use ExUnit.Case

  test "caches function result" do
    assert Cache.load(:k, fn _ -> :hello end) == :hello
    assert Cache.load(:k, fn _ -> :bob end) == :hello
  end
end
