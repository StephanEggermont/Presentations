accessing
character: aCharacter attribute: aFontAttribute
	|textElement text|
	character := aCharacter.
	attribute := aFontAttribute.
	text := aCharacter asRopedText.
	text attributes: { 
		BrFontFamilyAttribute named: 'Arial'.
		BrFontSizeAttribute size: 16 .
		BrTextForegroundAttribute paint: Color black.
		aFontAttribute} from: 1 to: text size.

	textElement := (BlTextElement new text: text; yourself)
	 	constraintsDo: [ :c | c padding: (BlInsets top:4 left:8 bottom: 4 right: 4) ];
		clipChildren: false;
		preventMouseEvents;
		yourself.
	self removeChildAt: 1.
	self addChild: textElement.
	