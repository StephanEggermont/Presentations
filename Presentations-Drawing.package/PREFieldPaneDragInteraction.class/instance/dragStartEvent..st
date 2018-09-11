dnd handlers
dragStartEvent: anEvent
	|fieldsPane field fieldCopy index |
	field := anEvent currentTarget.
	dragOffset := field globalPointToLocal: anEvent position.
	fieldsPane := field parent.
	index := fieldsPane childIndexOf: field.
	fieldsPane removeChild: field.
	fieldsPane space root addChild: field.
	fieldCopy := PREFieldPane titled: field title.
	fieldCopy addEventHandler: self.
	fieldsPane addChild: fieldCopy at: index.
	anEvent consumed: true.
