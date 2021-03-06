
(* sintaxe abstracta para Arith 2.0 *)

type program = inst list

and expr = (* expressões *)
  | I of int
  | Var of string
  | Op of op * expr * expr  

and inst = (* instruções *)
  | Dec of string * expr
  | Set of string * expr
  | Print of expr
  | Cond of test * inst list * inst list
  | Loop of test * inst list
  | Nop

and test = (* testes de validade *)
  | B of bool
  | Comp of expr * expr
  | Big of expr * expr
  | BigEqual of expr * expr
  | Small of expr * expr
  | SmallEqual of expr * expr
  | Neg of test

and op = Add | Sub | Mul | Div