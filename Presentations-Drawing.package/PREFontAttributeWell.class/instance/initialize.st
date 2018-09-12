initialization
initialize
	|textElement|
	super initialize.
	textElement := (BlTextElement new text: '' asRopedText; yourself)
		relocate: 3@4;
		clipChildren: false;
		preventMouseEvents;
		yourself.
	self addChild: textElement.
	self addEventHandler: PREFontAttributeWellListener new
