dnd handlers
dragStartEvent: anEvent
	|panel well wellCopy index |
	well := anEvent currentTarget.

	dragOffset := (anEvent currentTarget localBoundsToGlobal: (BlBounds origin: 0@0 extent: anEvent localPosition)) extent.

	panel := well parent.
	index := panel childIndexOf: well.
	panel removeChild: well.
	panel space addChild: well.
	wellCopy := PREFontAttributeWell character: well character attribute:  well attribute.
	panel addChild: wellCopy at: index.
	anEvent consumed: true.
