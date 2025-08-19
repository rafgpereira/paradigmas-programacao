Object subclass: Counting [
    Counting class >> uniques: xs [
        | uniqueSet |
        uniqueSet := Set new.
        xs do: [:eachElement |
            uniqueSet add: eachElement.
        ].
        ^uniqueSet size
    ]
]