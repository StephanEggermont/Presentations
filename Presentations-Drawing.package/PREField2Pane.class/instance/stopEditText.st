as yet unclassified
stopEditText
	|editorElement label|
	editing ifFalse: [ ^self ].
	editorElement := self children first.
	label := BlTextElement text: editorElement editor text. 
	label 	
		layout: (BlLinearLayout horizontal);
  		constraintsDo: [ :c | 
 			c horizontal matchParent.
			c vertical fitContent ];
		preventMouseEvents";
		clipChildren: false".

	self removeChild: editorElement.
	self addChild: label.
	title := label text asString.
	editing := false.