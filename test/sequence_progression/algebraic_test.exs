defmodule SequenceProgression.AlgebraicTest do
  use ExUnit.Case
  alias SequenceProgression.Algebraic
  doctest Algebraic

  test "returns the next value if the sequence provided is valid" do
    assert Algebraic.next([1, 3, 5]) == 7
  end

  test "returns nil if the sequence provided is not valid" do
    assert Algebraic.next([1, 3, 7, 9]) == nil
  end
end
