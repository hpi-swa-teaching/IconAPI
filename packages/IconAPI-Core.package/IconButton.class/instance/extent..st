geometry
extent: aPoint

        super extent: aPoint.

        self hasSubmorphs ifTrue: [
            self firstSubmorph 
                extent: aPoint x @ aPoint y;
                center: self center]
