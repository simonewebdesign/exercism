import gleam/int

pub fn convert(number: Int) -> String {
  case number {
    number if number % 3 == 0 && number % 5 == 0 && number % 7 == 0 ->
      "PlingPlangPlong"
    number if number % 3 == 0 && number % 5 == 0 -> "PlingPlang"
    number if number % 3 == 0 && number % 7 == 0 -> "PlingPlong"
    number if number % 5 == 0 && number % 7 == 0 -> "PlangPlong"
    number if number % 3 == 0 -> "Pling"
    number if number % 5 == 0 -> "Plang"
    number if number % 7 == 0 -> "Plong"

    _ -> int.to_string(number)
  }
}
