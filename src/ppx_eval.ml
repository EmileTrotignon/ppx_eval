open Ppxlib

let name = "eval"

let expand ~loc:_ ~path:_ (expr : string) =
  Parser.parse_expression Lexer.token (Lexing.from_string expr)

let ext =
  Extension.declare
    name
    Extension.Context.expression
    Ast_pattern.(single_expr_payload (estring __))
    expand

let () = Ppxlib.Driver.register_transformation name ~extensions:[ext]
