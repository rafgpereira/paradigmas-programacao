Object subclass: Progression [
    | r a |

    Progression class >> razao: R  termoInicial: A [
        | x |
        x := super new.
        x setRazao: R.
        x setTermoInicial: A.
        ^x
    ]

    setRazao: R [
        r := R
    ]

    setTermoInicial: A [
        a := A
    ]

    getR [ ^r ]
    getA [ ^a ]

    elements: n [
        | resultado |
        resultado := Array new: n.
        1 to: n do: [:i |
            resultado at: i put: (i-1)*r+a
        ].
        ^resultado
    ]

]