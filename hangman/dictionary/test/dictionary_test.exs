defmodule DictionaryTest do
  use ExUnit.Case

  test "random_word" do
    assert is_binary(Dictionary.random_word())
  end
end
