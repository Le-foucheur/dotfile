let rec pref pre v = 
  match pre,v with [],_ -> true
  | a :: q, e :: r -> a = e && pref a e
;;

