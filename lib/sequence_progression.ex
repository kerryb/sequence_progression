defmodule SequenceProgression do
  @moduledoc """
  # Sequence Progression

  For this problem you will need to write an app that will take a progressive
  sequence of 5 numbers, work out how the sequence progresses and output the
  next 1 number in the sequence.

  ## Examples

  iex> SequenceProgression.next [1, 3, 5, 7, 9]
  11
  iex> SequenceProgression.next [100, 91, 82]
  73

  The basic app should work out sequences that simply add/subtract a number to
  their elements just like the above example

  If you want to go further, try doing multiplication/division, eg:

      Input_2:  2, 4, 8, 16, 32
      Output_2: 64

      Input_3: 1024, -512, 256, -128, 64 O
      utput_3: -32

  ### Challenges:

  More advanced sequences could include squares/roots of numbers and any other
  thing you could come up with, such as quadratic functions.

  You could also have a blank number in the sequence, eg:

    Input_4:  1,  _, 9, 16, 25
    Output_4: 36

  (Progression here is: ^2 of its index)
  """

  @solvers [
    SequenceProgression.Algebraic,
  ]

  def next(sequence, solvers\\@solvers) do
    solvers
    |> Enum.find_value(fn solver -> solver.next sequence end)
  end
end
