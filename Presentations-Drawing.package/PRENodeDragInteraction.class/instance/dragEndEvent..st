dnd handlers
dragEndEvent: anEvent
	|me space target|
	dragOffset := nil.
	me := anEvent currentTarget.
	space := me space.
	space root removeChild: me.
	target := space root findMouseEventTargetAt: anEvent position.
	target ifNotNil: [ (target respondsTo: #addNode:at:) ifTrue: [ 
			target addNode: me at: anEvent position ] ].
	anEvent consumed: true.