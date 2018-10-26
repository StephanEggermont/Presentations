initialization
initialize
	super initialize.
	self size: self defaultSize;
		background: self defaultBackground;
		border: self defaultBorder.
	self constraintsDo: [  :c |
		c margin: (BlInsets all:2) ].