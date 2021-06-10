as yet unclassified
extent: newExtent

        super extent: newExtent.

        (self hasSubmorphs) ifTrue:[
            self firstSubmorph extent: (newExtent x @ newExtent y).
            self firstSubmorph center: self center.
        ]