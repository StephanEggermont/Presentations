initialization
switchExpanded
	expanded := expanded not.
	expanded ifTrue: [ pane visibility: BlVisibility visible]
		ifFalse: [ pane visibility: BlVisibility gone].
	pane invalidate.
	