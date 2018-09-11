dnd handlers
dragEvent: anEvent
	| dragOver |
	anEvent consumed: true.
	dragOver := expander children detect: [ :c | 
		(c bounds asRectangle containsPoint: ( 10 @ (anEvent position y))) ] ifNone: [ placeholder ].
	dragOver ~= placeholder ifTrue: [ | dragOverNr |
		dragOverNr := expander childIndexOf: dragOver.
		expander removeChild: placeholder.
		expander addChild: placeholder at: dragOverNr ].
	expanderPane relocate: (anEvent position - dragOffset)