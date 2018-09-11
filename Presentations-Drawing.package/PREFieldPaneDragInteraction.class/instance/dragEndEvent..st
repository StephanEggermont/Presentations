dnd handlers
dragEndEvent: anEvent
	|me space target|
	dragOffset := nil.
	me := anEvent currentTarget.
	space := me space.
	space root removeChild: me.
	target := space root findMouseEventTargetAt: anEvent position.
	target ifNotNil: [ (target respondsTo: #addField:at:) ifTrue: [ 
			target addField: me at: anEvent position ] ].
	anEvent consumed: true.