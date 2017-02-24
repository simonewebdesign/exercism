defmodule Bob do
  def hey(input) do
    cond do
        input
        |> String.ends_with?("?")
        -> "Sure."

        input
        |> String.strip()
        |> (& &1 == "").()
        -> "Fine. Be that way!"

        input
        |> String.upcase()
        |> (& &1 == input).()
        |> (& &1 && input != &2).(input |> String.downcase)
        -> "Whoa, chill out!"

        true
        -> "Whatever."
    end
  end
end
