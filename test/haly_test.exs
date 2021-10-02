defmodule HalyTest do
  use ExUnit.Case
  doctest Haly

  test "greets the world" do
    assert Haly.hello() == :world
  end
end
