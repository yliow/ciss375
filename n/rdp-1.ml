type token = Num of int
           | If
           | Then
           | Else
           | Begin
           | End
           | Print
           | IsEqu
           | Semicolon
;;
type
  s = If_S of e * s * s
    | Begin_s of s * l
    | Print_s of token
and
  l = Recursive_l of s * l 
    | Terminal_l
and
  e = IsEqu_E of token * token
;;

let tokens = [If; Num(1); IsEqu; Num(2); Then;
              Begin;
              If; Num(3); IsEqu; Num(4); Then;
              Print; Num(1000);
              End;
              Else;
              Begin;
              Print; Num(2000); Semicolon;
              Print; Num(3000); Semicolon;
              End
             ];;

let rec rdp tokens = match tokens with
    [] -> 
    t::tail ->
