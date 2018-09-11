adding
addField: aFieldPane at: aPosition
	aFieldPane removeEventHandler: PREFieldPaneDragInteraction default.
	aFieldPane addEventHandler: PREFieldOnFormInteraction default.
	self addChild: aFieldPane