defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    Enum.reduce(strand, 0, fn
      (x, acc) -> if x == nucleotide, do: acc + 1, else: acc
    end)
  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram([]), do: empty_histogram()
  def histogram(strand) do
    Enum.reduce(strand, empty_histogram(), fn
      (x, acc) -> Map.update(acc, x, 0, & &1 + 1)
    end)
  end

  defp empty_histogram(), do: Enum.reduce(@nucleotides, %{}, & Map.put(&2, &1, 0))
end
