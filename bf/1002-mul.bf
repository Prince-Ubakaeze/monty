,                      Read first digit into Cell 0 (ASCII)
> ,                    Read second digit into Cell 1 (ASCII)

Convert both inputs from ASCII characters to raw numerical values (subtract 48)
+++++ +++++            Set Cell 2 to 10 (loop counter)
[
    << ----            Subtract 4 from Cell 0
    < ----             Subtract 4 from Cell 1
    >>> -              Decrement loop counter in Cell 2
]
<< ----                Subtract remaining 8 from Cell 0
< ----                 Subtract remaining 8 from Cell 1

Multiplication logic (Cell 0 * Cell 1) stored into Cell 3
[                      Outer loop: runs Cell 0 times
    >                  Move to Cell 1
    [                  Inner loop: copies Cell 1 to Cell 3 and Cell 4
        >> +           Add 1 to Cell 3 (Accumulator)
        > +            Add 1 to Cell 4 (Temporary backup)
        <<< -          Decrement Cell 1
    ]
    >>>                Move to Cell 4
    [                  Restore Cell 1 from the backup in Cell 4
        <<<< +         Add 1 back to Cell 1
        >>>> -         Decrement Cell 4
    ]
    <<<< -             Decrement Cell 0
]

Convert product in Cell 3 back to an ASCII character (add 48)
+++++ +++++            Set Cell 0 to 10 (loop counter)
[
    >>> ++++           Add 4 to Cell 3
    <<< -              Decrement loop counter in Cell 0
]
>>> ++++               Add remaining 8 to Cell 3
.                      Print the multiplication product character
