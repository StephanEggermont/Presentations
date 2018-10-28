dnd handlers
dragEndEvent: anEvent
	snapLines notEmpty ifTrue: [ 
		target relocate:  snapLines first bounds left @ target bounds top.
		snapLines do: [:line | target parent removeChild: line].
		snapLines := OrderedCollection new].
	dragOffset := nil.
	target := nil.
	anEvent consumed: true.