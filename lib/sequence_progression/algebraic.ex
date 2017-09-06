defmodule SequenceProgression.Algebraic do
  @behaviour SequenceProgression.Solver

  def next(sequence) do
    case sequence
         |> Enum.chunk_every(2, 1, :discard)
         |> Enum.map(fn [a, b] -> b - a end)
         |> Enum.uniq do
      [diff] -> List.last(sequence) + diff
      _      -> nil
    end
  end
end
