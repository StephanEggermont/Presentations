initialization
initialize 	
	super initialize.
	expanded := false.
	self size: self defaultSize.
	self geometry: 	(BlPolygon vertices: self closedVertices).
	self addEventHandlerOn: BlClickEvent do: [ :anEvent | self switchExpanded ]