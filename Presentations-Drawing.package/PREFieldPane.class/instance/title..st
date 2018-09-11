accessing
title: aString
	|text|
	title := aString.
	text := title asRopedText.
	text attributes: { 
		BrFontFamilyAttribute named: 'Arial'.
		BrFontSizeAttribute size: 16 } from: 1 to: text size.
	self children first text: text.
