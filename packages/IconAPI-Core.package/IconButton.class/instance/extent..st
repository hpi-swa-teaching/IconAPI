accessing
extent: newExtent

        super extent: newExtent.

        self hasSubmorphs ifTrue: [
            self firstSubmorph 
                extent: newExtent x @ newExtent y;
                center: self center]
