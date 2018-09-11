accessing
pane: aPane
	pane ifNotNil: [ self removeChild: pane. ].
	aPane visibility: pane visibility.
	aPane relocate: 0@30.
	pane := aPane.
	self addChild: pane.