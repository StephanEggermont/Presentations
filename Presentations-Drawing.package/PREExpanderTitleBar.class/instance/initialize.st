initialization
initialize
	|textElement|
	expanded := false.
	super initialize.
	self size: self defaultSize;
		background: self defaultBackground;
		border: self defaultBorder;
		layout: (BlLinearLayout horizontal);
  		constraintsDo: [ :c | 
 			c horizontal matchParent.
			c vertical matchParent.
			c padding: (BlInsets top: 2 left: 2 bottom: 2 right: 5) ].

	self geometry: (BlRectangle cornerRadius: 3).
	self addChild: (PREExpanderTriangle new
			addEventHandlerOn: BlClickEvent do: [ :anEvent | self switchExpanded ];
			yourself).
	textElement := (BlTextElement new text: '' asRopedText; yourself)
  		constraintsDo: [ :c | 
			c margin: (BlInsets top: 5) ];
		clipChildren: false;
		preventMouseEvents;
		yourself.
	self addChild: textElement.
	self addEventHandler: PREExpanderTitleBarDragInteraction new.
