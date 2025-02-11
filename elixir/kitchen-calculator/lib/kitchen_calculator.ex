defmodule KitchenCalculator do
  def get_volume({_unit, num}), do: num

  def to_milliliter({unit, num}), do: {:milliliter, divider(unit) * num}

  def from_milliliter({:milliliter, num}, unit), do: {unit, num / divider(unit)}

  def convert(pair, desired_unit) do
    pair = to_milliliter(pair)
    {_, num} = from_milliliter(pair, desired_unit)
    {desired_unit, num}
  end

  defp divider(:milliliter), do: 1
  defp divider(:teaspoon), do: 5
  defp divider(:tablespoon), do: 15
  defp divider(:fluid_ounce), do: 30
  defp divider(:cup), do: 240
end
