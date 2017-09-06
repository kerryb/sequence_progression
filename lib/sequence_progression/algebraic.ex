defmodule SequenceProgression.Algebraic do
  @behaviour SequenceProgression.Solver

  def next(sequence) do
    case sequence |> diffs |> Enum.uniq do
      [diff] -> List.last(sequence) + diff
      _      -> nil
    end
  end

  defp diffs(sequence) do
    sequence
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.map(fn [a, b] -> b - a end)
  end
end
