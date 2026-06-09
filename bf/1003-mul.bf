,>,                Read two digits into Cell 0 and Cell 1
++++++[<<--------<-------->>>-] Subtract 48 from both to get raw numbers

[                  Outer loop (runs Cell 0 times)
    <[>>+>+<<<-]   Inner loop (copy Cell 1 to Cell 2 and Cell 3)
    >>>[<<<+>>>-]  Restore Cell 1 from Cell 3
    <<<<-          Decrement Cell 0 loop counter
]                  Cell 2 now holds the product (up to 81)

>>                 Move to Cell 2 (Product)
+++++ +++++        Set Cell 3 to 10 (Divisor)
[>+<-]             Move 10 to Cell 4 (Temporary variable)

>                  Move to Cell 4
[                  Division Loop to extract Tens and Ones digits
    <<             Go to Product (Cell 2)
    [
        >+         Increment Tens (Cell 3)
        >[-]       Clear Cell 4
        <<-        Decrement Product (Cell 2)
    ]
    >              Go to Tens (Cell 3)
    [<+>-]         Move Tens back to Product (Cell 2)
    >              Go to Cell 4
]

Now we use a standard math layout to cleanly isolate Tens and Ones:
<<                 Go back to Cell 2 (Product)
>+>+>              Setup variables for separation layout
<<[->[- >>+ <<] >> [- <<+>+>] <<<]

Tens digit is now in Cell 5 and Ones digit is in Cell 6
++++++[<<<<+++++++>>>>++++++[<<<<+++++>>>>-]<<<<+>>>>-] Add 48 to both cells
<<<<.              Print Tens Digit character
>.                 Print Ones Digit character

+++++ +++++.       Print a final Newline character (\n)
