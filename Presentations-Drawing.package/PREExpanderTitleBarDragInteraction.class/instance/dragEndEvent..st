dnd handlers
dragEndEvent: anEvent
	| dropIndex |
	anEvent consumed: true.
	dropIndex := expander childIndexOf: placeholder.
	expander removeChild: placeholder.
	expander space root removeChild: expanderPane.
	expander addChild: expanderPane at: dropIndex.
	expanderPane  constraintsDo: [ :c | 
 		c horizontal matchParent].
	placeholder := nil.
	expanderPane := nil.
	expander := nil