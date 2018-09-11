dnd handlers
dragStartEvent: anEvent
	|colorPanel colorWell colorWellCopy index |
	colorWell := anEvent currentTarget.

	dragOffset := (anEvent currentTarget localBoundsToGlobal: (BlBounds origin: 0@0 extent: anEvent localPosition)) extent.

	colorPanel := colorWell parent.
	index := colorPanel childIndexOf: colorWell.
	colorPanel removeChild: colorWell.
	colorPanel space addChild: colorWell.
	colorWellCopy := PREColorWell colored: colorWell color.
	colorPanel addChild: colorWellCopy at: index.
	anEvent consumed: true.
