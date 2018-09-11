drawing
drawOnSpartaCanvas: aCanvas
	| plusPath w h|
	super drawOnSpartaCanvas: aCanvas.
	w := self width.
	h := self height.
	plusPath := aCanvas path
		moveTo: w/3.0     @ 0;
		lineTo: w*2.0/3.0 @ 0;
		lineTo: w*2.0/3.0 @ (h/3.0);
		lineTo: w         @ (h/3.0);
		lineTo: w         @ (h*2.0/3.0);
		lineTo: w*2.0/3.0 @ (h*2.0/3.0);
		lineTo: w*2.0/3.0 @ h;
		lineTo: w/3.0     @ h;
		lineTo: w/3.0     @ (h*2.0/3.0);
		lineTo: 0         @ (h*2.0/3.0);
		lineTo: 0         @ (h/3.0);
		lineTo: w/3.0     @ (h/3.0);
		close;
		finish.
	aCanvas fill
		alpha: self border opacity;
		paint: Color gray;
		path: plusPath;
		draw.