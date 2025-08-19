Object subclass: Polygon [

    | sides |
    <comment: 'um polígono em smalltalk'>

    Polygon class >> new: n [
        | r |
        r := super new.
        r init: n.
        ^r
    ]

    init: n [ sides := n ]

    getSides [ ^sides ]
]