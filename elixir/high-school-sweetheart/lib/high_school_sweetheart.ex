import String

defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> trim |> first
  end

  def initial(name) do
    n = name |> first_letter |> upcase
    n <> "."
  end

  def initials(full_name) do
    full_name               # "John Doe"
    |> split                # ["John", "Doe"]
    |> Enum.map(&initial/1) # ["J.", "D."]
    |> Enum.join(" ")       # "J. D."
  end

  def pair(full_name1, full_name2) do
    """
    ❤-------------------❤
    |  #{initials full_name1}  +  #{initials full_name2}  |
    ❤-------------------❤
    """
  end
end
