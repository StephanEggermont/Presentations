initialization
initialize
	super initialize.
	self layout: BlLinearLayout vertical.
	self
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	self initializeLogo.
	self
		addChild:
			(BrButton new
				look: BrGlamorousButtonWithLabelLook new;
				label: '+';
				constraintsDo: [ :c | c horizontal matchParent ];
				margin:
					(BlInsets
						top: 5
						left: 20
						bottom: 5
						right: 20);
				action: [ self openNewPresentation ]).
	self addPresentationsList