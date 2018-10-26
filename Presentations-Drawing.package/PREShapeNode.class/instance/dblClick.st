as yet unclassified
dblClick
	resizer ifNil: [ 
		resizer := BlResizerElement on: self.
		self parent addChild: resizer ]
	ifNotNil: [ 
		resizer detach.
		self parent removeChild: resizer.
		resizer := nil ]