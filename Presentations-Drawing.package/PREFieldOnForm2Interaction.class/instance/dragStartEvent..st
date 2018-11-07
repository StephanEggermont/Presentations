dnd handlers
dragStartEvent: anEvent
	target := anEvent currentTarget.
	dragOffset := target globalPointToLocal: anEvent position.
	anEvent consumed: true.
	wasDrag := false.