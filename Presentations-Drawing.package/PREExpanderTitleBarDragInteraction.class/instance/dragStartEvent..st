dnd handlers
dragStartEvent: anEvent
	|startIndex|
	anEvent consumed: true.
	expanderTitleBar := anEvent currentTarget.
	expander := expanderTitleBar parent parent.
	expanderPane := expanderTitleBar parent.
	dragOffset := (expanderTitleBar globalPointToLocal: anEvent position) - expanderTitleBar position.
	startIndex := expander childIndexOf: expanderPane.
	dragIndex := startIndex.
	placeholder := self placeholderFor: expanderPane.
	expander removeChildAt: startIndex.
	expander space root addChild: expanderPane.
	expander addChild: placeholder at: startIndex 