initialization
setTextColor: aColor
	|text|
	text := title asRopedText.
	textAttributes foreground: aColor.
	text attributes: textAttributes attributes from: 1 to: text size.
	self children first text: text.
