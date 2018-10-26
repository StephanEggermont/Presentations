adding
addNode: aNode at: aPosition
	aNode removeEventHandler: PRENodeDragInteraction default.
	aNode addEventHandler: PRENodeOnFormInteraction default.
	self addChild: aNode