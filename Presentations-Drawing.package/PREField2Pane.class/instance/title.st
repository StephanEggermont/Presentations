accessing
title
	editing ifFalse: [  ^ title]
	ifTrue: [ ^ self children first editor text asString ]