api-tools
openNewPresentation
	| presentation aSpace |

	presentation :=  PREForm new.

	aSpace := BlSpace new.
	aSpace withHalos.
	aSpace host: BlOSWindowHost default.
	aSpace title: 'PREForm'.
	aSpace extent: 400@600.
	aSpace addChild: presentation.
	aSpace show.
	aSpace when: BlSpaceClosedEvent do: [ 
		PREPresentations default presentations remove: aSpace ifAbsent: [  ].
		presentationsList display: PREPresentations default presentations. ].
	
	PREPresentations default presentations add: aSpace.
	presentationsList display: PREPresentations default presentations.
