initialization
setFontAttribute: anAttributeSelector
	|text|
	editing ifTrue: [ ^self ].
	text := title asRopedText.
	textAttributes perform: anAttributeSelector.
	text attributes: textAttributes attributes from: 1 to: text size.
	self children first text: text.
