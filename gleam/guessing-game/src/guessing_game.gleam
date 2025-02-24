pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    n if n == 41 || n == 43 -> "So close"
    n if n < 41 -> "Too low"
    _ -> "Too high"
  }
}
