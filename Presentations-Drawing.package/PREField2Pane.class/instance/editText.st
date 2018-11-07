as yet unclassified
editText
	| editor label |
	resizer ifNil: [ 
		resizer := BlResizerElement on: self.
		self parent addChild: resizer ]
	ifNotNil: [ 
		resizer detach.
		self parent removeChild: resizer.
		resizer := nil ].
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
	editing := true.
