initialization
initialize
	|textElement|
	expanded := false.
	super initialize.
	self size: self defaultSize;
		background: self defaultBackground;
		border: self defaultBorder.
	self geometry: (BlRectangle cornerRadius: 3).
	textElement := (BlTextElement new text: '' asRopedText; yourself)
		relocate: 30@4;
		width: 100;
		clipChildren: false;
		preventMouseEvents;
		yourself.
	self addChild: textElement.
	self addEventHandler: PREExpanderTitleBarDragInteraction new
