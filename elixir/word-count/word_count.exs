defmodule Words do

  def count(sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r/_|[^\w-]/u, " ")
    |> String.split
    |> Enum.reduce(%{}, fn word, acc ->
      Map.update acc, word, 1, & &1 + 1
    end)
  end
end
