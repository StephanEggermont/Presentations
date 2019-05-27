initialization
initializeLogo
	| aText |
	
	aText := 'present' asRopedText fontSize: 30.
	(aText from: 1 to: 3) bold.
	(aText from: 4 to: aText size) thin.
	
	self addChild: (BlTextElement new
		padding: (BlInsets top: 20 bottom: 20);
		text: aText;
		constraintsDo: [ :c | c linear horizontal alignCenter ])