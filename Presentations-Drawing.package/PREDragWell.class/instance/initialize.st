initialization
initialize
	super initialize.
	self background: Color veryVeryLightGray;
		size: 27@27;
		hideBorder.
	self geometry: (BlRectangle cornerRadius: 3).
	self constraintsDo: [ :c | c margin: (BlInsets all: 1) ]