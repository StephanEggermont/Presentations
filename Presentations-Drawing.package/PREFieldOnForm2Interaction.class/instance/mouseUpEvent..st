mouse handlers
mouseUpEvent: anEvent
	|menu|
	anEvent secondaryButtonPressed ifFalse: [ ^self].
	wasDrag ifFalse: [  
		target := anEvent currentTarget.
		menu := MenuMorph new.
		menu add: 'delete' target: self selector: #deleteMe.
		menu add: 'duplicate' target: self selector: #copyMe: argument: anEvent.
		menu addLine.
		menu add: 'edit text' target: anEvent currentTarget selector: #editText.
		^menu popUpInWorld]
	ifTrue: [ wasDrag := false].