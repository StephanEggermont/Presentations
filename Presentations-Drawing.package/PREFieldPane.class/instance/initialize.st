initialization
initialize
	|textElement|
	super initialize.
	self size: self defaultSize;
		background: self defaultBackground;
		border: self defaultBorder.
	self geometry: (BlRectangle cornerRadius: 3).
	textElement := (BlTextElement new text: '' asRopedText; yourself)
		relocate: 30@4;
		preventMouseEvents;
		clipChildren: false;
		yourself.
	self addChild: textElement.
