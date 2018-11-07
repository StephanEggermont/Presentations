accessing
character: aCharacter attribute: aFontAttributeSelector
	|textElement text |
	character := aCharacter.
	attribute := aFontAttributeSelector.
	text := aCharacter asRopedText.
	attributes := BlTextAttributesBuilder new.
	attributes fontName: 'Arial';
		fontSize: 16.
	attributes perform: aFontAttributeSelector.
	attributes applyOn: text.

	textElement := (BlTextElement new text: text; yourself)
	 	constraintsDo: [ :c | c padding: (BlInsets top:4 left:8 bottom: 4 right: 4) ];
		clipChildren: false;
		preventMouseEvents;
		yourself.
	self removeChildAt: 1.	
	self addChild: textElement at: 1
	