⍝ generate a random binary array
gen←{x←2×⍵ ⋄ ?2⍴⍨1-⍨x-⍨2*x}

 z←sender x;a;b;c;d        ⍝ x:binary vector to encode
 a←2/⌈0.5*⍨⍴x              ⍝ calculate the dimention of the final matrix
 b←×/a                     ⍝ length needed
 c←⌽2*⍳2⍟b                 ⍝ position of the check cells
 d←{x@⍵⊢b⍴0}(⍳b)~0,c       ⍝ empty vector with the check cells empty
 z←{1@⍵⊢d}c/⍨≠/(2/⍨2⍟b)⊤⍸d ⍝ fill the check cells
 z←a⍴{⍵@0⊢z}2|1⊥z          ⍝ and finally i fill tha last cell, the top left one

⍝ changes a random bit
interference←{~@(⊂?⍴⍵)⊢⍵}

⍝finds the position of the error
hammingCode←{2⊥≠/2⊥⍣¯1⊢⍸⍵}

⍝ replaces the wrong bit and gives the vector without the check bits
receiver←{((⊂⍳∘⍴~0,2*∘⍳2⍟⍴),⍵)⌷~@(hammingCode,⍵)⊢,⍵}
