dnd handlers
dragStartEvent: anEvent
	anEvent consumed: true.
	colorWell := anEvent currentTarget copy.
	dragOffset := anEvent position - anEvent currentTarget position.
	root addChild: colorWell.
