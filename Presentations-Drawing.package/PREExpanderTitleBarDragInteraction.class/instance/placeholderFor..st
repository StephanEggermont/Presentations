dnd handlers
placeholderFor: aPane
	placeholder := BlElement new.
	placeholder 
		relocate: aPane position;
		size: aPane geometry extent;
		background: Color white darker;
		border: (BlBorderBuilder new paint: Color gray; dashed; width: 1; build).	
	placeholder geometry: (BlRectangle cornerRadius: 3).
	^placeholder 