defmodule FreelancerRates do
  @spec daily_rate(number()) :: float()
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  @spec apply_discount(number(), number()) :: float()
  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100.0
  end

  @spec monthly_rate(number(), number()) :: float()
  def monthly_rate(hourly_rate, discount) do
    rate = hourly_rate * 8 * 22
    rate - rate * discount / 100.0
    |> ceil()
  end

  @spec days_in_budget(number(), number(), number()) :: float()
  def days_in_budget(budget, hourly_rate, discount) do
    rate = daily_rate(hourly_rate)
    rate = rate - rate * discount / 100.0

    budget / rate
    |> Float.floor(1)
  end
end
