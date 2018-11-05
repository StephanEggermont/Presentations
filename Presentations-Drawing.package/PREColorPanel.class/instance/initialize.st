initialization
initialize
	super initialize.
	self background: self defaultBackground;
		border: self defaultBorder;
		padding: (BlInsets top: 2 right: 0 bottom: 2 left: 2 );
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent];
		layout: BlFlowLayout horizontal.

	
	self geometry: (BlRectangle cornerRadius: 3).
	
	
	self addPlusWell;
		addDefaultColors.
