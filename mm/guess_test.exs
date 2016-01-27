Code.load_file("guess.exs")
ExUnit.start

ExUnit.configure exclude: :pending, trace: true

defmodule ChopTest do
  use ExUnit.Case

  test "finds midpoints" do 
    assert Chop.midpoint(1..10) == 5
    assert Chop.midpoint(2..10) == 6
    assert Chop.midpoint(5..10) == 7
    Chop.guess(4, 1..10)
  end
end

