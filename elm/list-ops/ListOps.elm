module ListOps exposing (..)

length list =
  case list of
    [] -> 0
    h :: t -> 1 + length t


reverse list =
  case list of
    [] -> []
    h :: t -> reverse t ++ [h]


map fn list =
  case list of
    [] -> []
    h :: t -> fn h :: map fn t


filter fn list =
  case list of
    [] -> []
    h :: t ->
      if fn h then
        h :: filter fn t
      else
        filter fn t


foldl fn acc list =
  case list of
    [] -> acc
    h :: t ->
      foldl fn (fn h acc) t


foldr fn acc list =
  case list of
    [] -> acc
    h :: t ->
      fn h (foldr fn acc t)


append a b =
  case b of
    [] -> a
    _ ->
      foldr (::) b a


concat lists =
  foldr append [] lists