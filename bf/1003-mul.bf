>>>>>              Shift our base pointer right by 5 cells to prevent array underflow

,>,                Read two digits into Cell 5 and Cell 6
++++++[<<--------<-------->>>-] Subtract 48 from both to get raw numeric values

[                  Outer loop: runs Cell 5 times
    <[>>+>+<<<-]   Inner loop: copy Cell 6 to Cell 7 and Cell 8
    >>>[<<<+>>>-]  Restore Cell 6 from Cell 8 backup
    <<<<-          Decrement Cell 5 loop counter
]                  Cell 7 now holds the product (up to 81)

>>                 Move to Cell 7 (Product)
+++++ +++++        Set Cell 8 to 10 (Divisor loop value)
[>+<-]             Move 10 to Cell 9 (Temporary divisor tracking variable)

>                  Move to Cell 9
[                  Division Loop to extract Tens and Ones digits
    <<             Go to Product (Cell 7)
    [
        >+         Increment Tens (Cell 8)
        >[-]       Clear Cell 9
        <<-        Decrement Product (Cell 7)
    ]
    >              Go to Tens (Cell 8)
    [<+>-]         Move Tens back to Product (Cell 7)
    >              Go to Cell 9
]

<<                 Go back to Cell 7 (Product)
>+>+>              Setup variables for layout separation
<<[->[- >>+ <<] >> [- <<+>+>] <<<]

Tens digit is now in Cell 10 and Ones digit is in Cell 11
++++++[<<<<+++++++>>>>++++++[<<<<+++++>>>>-]<<<<+>>>>-] Add 48 to both cells to get ASCII characters
<<<<.              Print Tens Digit character
>.                 Print Ones Digit character

+++++ +++++.       Print a trailing Newline character (\n)
