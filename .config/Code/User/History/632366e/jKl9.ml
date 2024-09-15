

let rec pref pre v = 
  match pre,v with [],_ -> true
  |_,[] -> false
  | a :: q, e :: r -> a = e && pref q r
;;

pref ["b";"l";"a";"b";"r";"a"] ["b";"l";"a"];;