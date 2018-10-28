dnd handlers
dragEvent: anEvent
	anEvent consumed: true.
	anEvent currentTarget relocate: (anEvent position - dragOffset).
	self calculateSnapLines.
	wasDrag := true.