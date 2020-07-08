
let () =
  (match [%eval "Some(1)"] with
  | Some _ -> ()
  | None -> ());
  let a = 314 in
  print_int [%eval "let b = a * 2  in b - 3"]

