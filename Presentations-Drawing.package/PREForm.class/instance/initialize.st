initialization
initialize
	super initialize.
	self size: 800@600.
	self background: Color white.
	self border: (BlBorder paint: Color gray width: 0.5).
	expander := PREExpander new.
	expander addEventHandler: PREDragTopListener new.
	self addChild: expander.
