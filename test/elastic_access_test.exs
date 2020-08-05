defmodule ElasticAccessTest do
  use ExUnit.Case
  doctest ElasticAccess

  test "greets the world" do
    assert ElasticAccess.hello() == :world
  end
end
