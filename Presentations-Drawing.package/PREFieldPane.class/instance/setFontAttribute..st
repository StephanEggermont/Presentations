initialization
setFontAttribute: anAttribute
	|text|
	text := title asRopedText.
	text attributes: { 
		BrFontFamilyAttribute named: 'Arial'.
		BrFontSizeAttribute size: 16.
		anAttribute } from: 1 to: text size.
	self children first text: text.
