,          Read first digit into Cell 0
> ,        Read second digit into Cell 1

[          Loop to shift value from Cell 1 into Cell 0
    < +    Increment Cell 0
    > -    Decrement Cell 1
]          Cell 0 now holds (ASCII_1 + ASCII_2)

+++++ +++++  Set Cell 1 to 10 (loop counter to subtract 48)
[
    < ----   Subtract 4 from Cell 0
    > -      Decrement Cell 1 counter
]
< ----       Subtract remaining 8 from Cell 0 (total 48 subtracted)
.            Print the result from Cell 0
