defmodule SequenceProgression.Geometric do
  @behaviour SequenceProgression.Solver

  def next(sequence) do
    case sequence |> ratios |> Enum.uniq do
      [ratio] -> List.last(sequence) * ratio |> trunc
      _      -> nil
    end
  end

  defp ratios(sequence) do
    sequence
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.map(fn [a, b] -> b / a end)
  end
end
