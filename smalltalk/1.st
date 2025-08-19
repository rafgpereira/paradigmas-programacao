Object subclass: Progression [
    | r a |
    Progression class >> razao: R termoInicial: A [
        | x |
        x := super new .
        x setRazao: R .
        x setTermoInicial: A .
        ^x
    ]

    setRazao: R [
        r := R
    ]

    setTermoInicial: A [
        a := A
    ]

    elementsA: n [
        | res |
        res := Array new: n .
        1 to: n do: [:i |
            res at: i put: i-1*r+a
        ] .
        ^res
    ]

    elementsB: n [
        | res |
        res := Array new: n .
        1 to: n do: [:i |
            res at: i put: (r raisedToInteger: i-1) * a
        ] .
        ^res
    ]
]

p := Progression razao: 2 termoInicial: 5 .

(p elementsA: 5) printNl .

(p elementsB: 5) printNl