initialization
initialize
	super initialize.
	self constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent.
		c padding: (BlInsets top: 20 right: 1 bottom: 1 left: 1)].
	self background: Color lightGray.
	self border: (BlBorder paint: Color gray width: 0.5).
	self layout: (BlFlowLayout vertical).
	textPane := PREExpanderPane titled: 'Fields'.
	shapePane := PREExpanderPane titled: 'Shape'.
	fontPane := PREExpanderPane titled: 'Font'.
	stylePane := PREExpanderPane titled: 'Style'.
	stylePane pane: PREFontAttributesPanel new.
	colorPane := PREExpanderPane titled: 'Color'.
	colorPane pane: PREColorPanel new.	
	textPane addField: 'Text'.
	textPane addField: 'Date'.
	textPane addField: 'Money'.
	fontPane addField: 'Arial'.
	shapePane addShape: PRECircleNode.
	shapePane addShape: PRERectangleNode.
	self addChild: textPane.
	self addChild: shapePane.
	self addChild: fontPane.
	self addChild: stylePane.
	self addChild: colorPane.
	
	