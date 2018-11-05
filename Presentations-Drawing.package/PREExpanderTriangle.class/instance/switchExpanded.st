initialization
switchExpanded
	expanded := expanded not.
	expanded ifTrue: [ 
		self geometry: 	(BlPolygon vertices: self expandedVertices)]
	ifFalse: [ 
		self geometry: 	(BlPolygon vertices: self closedVertices)]
