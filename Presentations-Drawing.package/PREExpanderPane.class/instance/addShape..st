accessing
addShape: aClass
	|shape|
	shape := aClass new.
	shape addEventHandler: self nodeDragInteraction.
	pane addChild: shape.