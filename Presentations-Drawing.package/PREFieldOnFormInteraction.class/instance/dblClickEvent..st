mouse handlers
dblClickEvent: anEvent
	anEvent primaryButtonPressed ifFalse: [ ^self].
	wasDrag ifFalse: [  
		anEvent currentTarget editText]
	ifTrue: [ wasDrag := false].