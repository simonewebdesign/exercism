defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove([_head | tail]), do: tail

  def first([first | _rest]), do: first

  def count(list), do: length(list)

  def functional_list?(list), do: "Elixir" in list
end
