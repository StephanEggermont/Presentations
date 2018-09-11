as yet unclassified
chooseAColor
	|dialog|
	dialog := ColorSelectorDialogWindow labelled: 'Choose color'.
	World openModal: dialog.
	dialog cancelled 
		ifTrue: [ ^nil ]
		ifFalse: [ ^dialog selectedColor ] 