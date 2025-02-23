import gleam/int

pub fn secret_add(secret: Int) -> fn(Int) -> Int {
  int.add(secret, _)
}

pub fn secret_subtract(secret: Int) -> fn(Int) -> Int {
  int.subtract(_, secret)
}

pub fn secret_multiply(secret: Int) -> fn(Int) -> Int {
  int.multiply(secret, _)
}

pub fn secret_divide(secret: Int) -> fn(Int) -> Int {
  fn(x) { x / secret }
}

pub fn secret_combine(
  secret_function1: fn(Int) -> Int,
  secret_function2: fn(Int) -> Int,
) -> fn(Int) -> Int {
  fn(x) { x |> secret_function1 |> secret_function2 }
}
