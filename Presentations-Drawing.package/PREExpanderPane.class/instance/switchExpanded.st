initialization
switchExpanded
	expanded := expanded not.
	expanded ifTrue: [ pane visibility: BlVisibility visible. self height: 30+ pane height]
		ifFalse: [ pane visibility: BlVisibility gone. self height: 30 ].
	