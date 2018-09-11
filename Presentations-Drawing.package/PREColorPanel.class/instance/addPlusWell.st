adding
addPlusWell
	self addChild: (PREPlusWell new 
		addEventHandlerOn: BlClickEvent do: [ :evt |
			self chooseAColor ifNotNil: [ :color | self addColorWell: color ].
			evt consumed: true ];
		yourself)