defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.replace(~r/[^-a-z0-9]+/, " ")
    |> String.split()
    |> Enum.reduce(%{}, fn
      word, acc ->
        acc
        |> Map.update(word, 1, & &1 + 1)
    end)
  end
end
