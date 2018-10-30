initialization
initialize
	expanded := false.
	super initialize.
	self size: self defaultSize;
		background: self defaultBackground;
		border: self defaultBorder;
		geometry: (BlRectangle cornerRadius: 3);
		layout: (BlLinearLayout vertical);
  		constraintsDo: [ :c | 
 			c horizontal matchParent.
			c vertical fitContent ].
	titleBar := PREExpanderTitleBar new.
	self addChild: titleBar.	 
	pane := BlElement new 
		size: 150@10;
		background: self defaultPaneBackground;
		border: self defaultBorder;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent];
		visibility: BlVisibility gone;
		layout: (BlFlowLayout vertical);
		yourself.
	self addChild: pane.
