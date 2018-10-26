mouse handlers
dblClickEvent: anEvent
	anEvent primaryButtonPressed ifFalse: [ ^self].
	wasDrag ifFalse: [  
		anEvent currentTarget dblClick]
	ifTrue: [ wasDrag := false].