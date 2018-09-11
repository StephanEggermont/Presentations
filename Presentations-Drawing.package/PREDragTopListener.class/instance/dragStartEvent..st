dnd handlers
dragStartEvent: anEvent
	dragOffset := (anEvent currentTarget localBoundsToParent: (BlBounds origin: 0@0 extent: anEvent localPosition)) extent.
	anEvent consumed: anEvent localPosition y <= 20