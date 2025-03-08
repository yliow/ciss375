(*
   Grammar variable    type
   S                   s
   L                   l
   E                   e

   Grammar production rule      Constructor
   S -> if E then S else S      If_s of (e * s * s)
   S -> begin S L               Begin_s of (s * l)
   S -> print num               Print_s of token
   L -> ; S L                   Recursive_l of (s * l)
   L -> end                     Terminal_l
   E -> num == num              IsEqu_e (token * token)


   print 5
   -> [Print; Num 5] -> Print_s (Num 5)]

   if 0 == 1 then print 2 else print 3
   -> [If; Num 0; IsEqu; Num 1; Then; Print; Num 2; Else; Print Num 3]
   -> If_s (IsEqu (Num 0, Num 1),
            Print_s (Num 2),
            Print_s (Num 3)
           )
 *)

type
  s = If_s of e * s * s 
    | Begin_s of s * l  
    | Print_s of token  
and
  l = Recursive_l of s * l 
    | Terminal_l
and
  e = IsEqu_E of token * token
;;
