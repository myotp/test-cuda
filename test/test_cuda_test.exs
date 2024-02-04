defmodule TestCudaTest do
  use ExUnit.Case
  doctest TestCuda

  test "greets the world" do
    assert TestCuda.hello() == :world
  end
end
