import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> msg | "[WARNING]:" <> msg | "[ERROR]:" <> msg ->
      string.trim(msg)
    _ -> panic
  }
}

pub fn log_level(log_line: String) -> String {
  log_line
  |> string.drop_left(up_to: 1)
  |> string.replace(each: message(log_line), with: "")
  |> string.replace(each: "]:", with: "")
  |> string.trim_right()
  |> string.lowercase()
}

pub fn reformat(log_line: String) -> String {
  let msg = message(log_line)
  let lvl = log_level(log_line)

  string.concat([msg, " (", lvl, ")"])
}
