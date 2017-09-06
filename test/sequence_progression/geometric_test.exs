defmodule SequenceProgression.GeometricTest do
  use ExUnit.Case
  alias SequenceProgression.Geometric
  doctest Geometric

  test "returns the next value if the sequence provided is valid" do
    assert Geometric.next([1, 2, 4]) == 8
  end

  test "returns nil if the sequence provided is not valid" do
    assert Geometric.next([1, 2, 5, 10]) == nil
  end
end
