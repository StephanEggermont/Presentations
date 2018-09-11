dnd handlers
clickEvent: anEvent
	| positionInPane |
	positionInPane := (anEvent currentTarget globalPointToLocal: anEvent position) - anEvent currentTarget position.
	((Rectangle origin: 1@1 corner: 30@30) containsPoint: positionInPane) ifTrue: [ 
		anEvent currentTarget switchExpanded  ]