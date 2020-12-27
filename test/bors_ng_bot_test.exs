defmodule BorsNgBotTest do
  use ExUnit.Case
  doctest BorsNgBot

  test "greets the world" do
    assert BorsNgBot.hello() == :world
  end
end
