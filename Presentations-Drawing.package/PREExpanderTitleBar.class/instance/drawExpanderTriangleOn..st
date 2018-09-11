initialization
drawExpanderTriangleOn: aCanvas
	| path |
	expanded ifTrue: [ 
		path := aCanvas path
			moveTo: 5@10;
			lineTo: 25@10;
			lineTo: 15@25;
			close;
			finish ]
	ifFalse: [ 
		path:= aCanvas path
			moveTo: 10@5;
			lineTo: 25@15;
			lineTo: 10@25;
			close;
			finish ].
	aCanvas fill
		paint: Color paleBlue;
		path: path;
		draw.
	aCanvas stroke
		paint: Color lightGray;
		path: path;
		width: 0.5;
		draw