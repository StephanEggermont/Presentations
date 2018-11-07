initialization
initialize
	super initialize.
	self size: self defaultSize;
		background: self defaultBackground;
		border: self defaultBorder.
	self geometry: (BlRectangle cornerRadius: 3);
		layout: (BlLinearLayout horizontal);
  		constraintsDo: [ :c | 
 			c horizontal exact: 150.
			c vertical fitContent ].
	self addChild: self initialTextElement.
	editing := false.
