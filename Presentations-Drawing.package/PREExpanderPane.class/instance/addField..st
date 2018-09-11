accessing
addField: aName
	|field|
	field := PREFieldPane titled: aName.
	field addEventHandler: self fieldPaneDragInteraction.
	pane addChild: field.