module HelloWorld exposing (..)

helloWorld : Maybe String -> String
helloWorld name =
  case name of
    Just aName ->
      "Hello, " ++ aName ++ "!"
    Nothing ->
      "Hello, World!"
