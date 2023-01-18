defmodule DictionaryTest do
  use ExUnit.Case

  test "random_word" do
    dict = Dictionary.start()
    assert is_binary(Dictionary.random_word(dict))
  end
end
