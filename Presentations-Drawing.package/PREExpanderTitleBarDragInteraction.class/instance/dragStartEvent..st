dnd handlers
dragStartEvent: anEvent
	|startIndex|
	anEvent consumed: true.
	expanderTitleBar := anEvent currentTarget.
	expander := expanderTitleBar parent parent.
	expanderPane := expanderTitleBar parent.
	"'Moving the expanderPane by removing it from its parent
	and dragging it around directly in the root. No longer match the
	width of my parent while doing so"
	expanderPane  constraintsDo: [ :c | 
 		c horizontal exact: expanderPane bounds width].
	dragOffset := (expanderTitleBar globalPointToLocal: anEvent position) - expanderTitleBar position.
	startIndex := expander childIndexOf: expanderPane.
	dragIndex := startIndex.
	placeholder := self placeholderFor: expanderPane.
	expander removeChildAt: startIndex.
	expander space root addChild: expanderPane.
	expander addChild: placeholder at: startIndex 