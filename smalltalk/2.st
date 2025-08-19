Object subclass: Couting [
    uniques: xs [
        ^xs asSet size
    ]

    repeats: xs [
        | seen count |
        seen := Set new .
        count := 0 .
        xs do: [:el |
            (seen includes: el) 
            ifTrue: [count := count + 1]
            ifFalse: [seen add: el]
        ] .
        ^count
    ]

    mean: xs [
        | total |
        total := 0 .
        xs do: [:i |
            total := total + i
        ] .
        ^total/(xs size)
    ]

    median: xs [
        | sorted size |
        sorted := xs asSortedCollection .
        size := xs size .
    
        size odd 
            ifTrue: [^sorted at: xs size // 2 + 1]
            ifFalse: [^(sorted at: size//2 + 1) + (sorted at: size//2) / 2] 
    ]

    mode: xs [
        | frequencies modeValue maxFreq |
        frequencies := Dictionary new .
        maxFreq := 0 .

        xs do: [:el | frequencies at: el put: (frequencies at: el ifAbsent: [0]) + 1].

        frequencies keysAndValuesDo: [:value :freq |
            freq > maxFreq ifTrue: [
                maxFreq := freq .
                modeValue := value
            ]
        ].

        ^modeValue
    ]
]

c := Couting new .
(c uniques: #(6 3 4 0 4)) printNl .
(c repeats: #(2 0 2 0 3 4 5)) printNl .
(c mean: #(17 0 3 14 17)) printNl .
(c median: #(14 3 19 12 19)) printNl .
(c median: #(5 17 5 2 5 14)) printNl .
(c mode: #(3 0 3 4 4 2 3 2 1 2)) printNl
