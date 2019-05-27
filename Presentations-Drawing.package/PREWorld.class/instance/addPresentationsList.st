initialization
addPresentationsList
	presentationsList := BrSimpleList new
		display: PREPresentations default presentations;
		margin:
			(BlInsets
				top: 20
				left: 0
				bottom: 5
				right: 0);
		stencil: [ :item | 
			BrButton new
				look: BrGlamorousButtonWithLabelLook new;
				label: item title;
				constraintsDo: [ :c | c horizontal matchParent ];
				margin:
					(BlInsets
						top: 5
						left: 20
						bottom: 5
						right: 20);
				action: [ item toFront ] ].
	self addChild: presentationsList