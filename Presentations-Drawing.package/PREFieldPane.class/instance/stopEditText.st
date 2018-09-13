as yet unclassified
stopEditText
	|editorElement label|
	editing ifFalse: [ ^self ].
	editorElement := self children first.
	label := BlTextElement text: editorElement editor text. 
	label 	relocate: 30@4;
		preventMouseEvents;
		clipChildren: false.

	self removeChild: editorElement.
	self addChild: label.
	title := label text asString.
	editing := false.