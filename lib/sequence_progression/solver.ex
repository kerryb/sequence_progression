defmodule SequenceProgression.Solver do
  @callback next(sequence :: list) :: integer
end
