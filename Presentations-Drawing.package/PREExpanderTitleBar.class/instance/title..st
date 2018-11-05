accessing
title: aString
	|text|
	title := aString.
	text := (title, ' ') asRopedText.
	text attributes: { 
		BlFontFamilyAttribute named: 'Arial'.
		BlFontSizeAttribute size: 16 } from: 1 to: text size.
	self children second text: text.
