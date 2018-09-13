dnd handlers
dragStartEvent: anEvent
	dragOffset := (anEvent currentTarget localBoundsToParent: (BlBounds origin: 0@0 extent: anEvent localPosition)) extent.
	elevation := anEvent currentTarget elevation.
	anEvent currentTarget elevation: (BlRelativeElevation elevation: 500).
	anEvent consumed: anEvent localPosition y <= 20