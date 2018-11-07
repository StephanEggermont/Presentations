initialization
initialTextElement
	^(BlTextElement new text: '' asRopedText; yourself)
		preventMouseEvents;
		clipChildren: false;
		yourself.
