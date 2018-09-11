dnd handlers
dragEndEvent: anEvent
	|me space target|
	dragOffset := nil.
	me := anEvent currentTarget.
	space := me space.
	space root removeChild: me.
	target := space root findMouseEventTargetAt: anEvent position.
	target ifNotNil: [ (target respondsTo: #background:) ifTrue: [ 
			target background: me color ] ].
	anEvent consumed: true.
