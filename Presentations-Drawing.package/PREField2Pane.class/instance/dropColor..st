accessing
dropColor: aColor
	| menu |
	menu := MenuMorph new.
	menu add: 'Text' target: self selector: #setTextColor: argument: aColor.
	menu add: 'Background' target: self selector: #setBackgroundColor: argument: aColor.
	menu add: 'Border' target: self selector: #setBorderColor: argument: aColor.
	^menu popUpInWorld
