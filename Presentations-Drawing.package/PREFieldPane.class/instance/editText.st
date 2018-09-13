as yet unclassified
editText
	|editor label|
	editing ifTrue: [ ^self ].
	label := self children first.
	editor := BrEditorElement  new 
		editor: (BrTextEditor new text: label text)
		yourself.
	self removeChild: label.
	self addChild: editor.
	editing := true.