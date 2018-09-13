as yet unclassified
editText
	| editor label |
	editing ifTrue: [ ^self stopEditText].
	label := self children first.
	editor := BrEditorElement  new 
		editor: (BrTextEditor new text: label text)
		yourself.
	editor width: label parent width - 2 .
	editor constraintsDo: [ :c |
		c vertical fitContent ].
	self removeChild: label.
	self addChild: editor.
	self constraintsDo: [ : c |
		c vertical fitContent ].
	editing := true.