as yet unclassified
calculateSnapLines
	snapLines do: [ :line | target parent removeChild: line ].
	snapLines := OrderedCollection new.
	target parent childrenDo: [ :element |
		element ~= target ifTrue: [  
		((element bounds  left) - (target bounds left)) abs < 5 ifTrue: [ 
		element class = PRERectangleNode ifTrue: [ |line|
			line := BlLineElement new
				fromAnchor: (BlAbsolutePositionAnchor position: element bounds left @ target bounds top);
				toAnchor: (BlAbsolutePositionAnchor position: element bounds bottomLeft);
				border: (BlBorder paint: Color red width: 1);
				yourself.
			snapLines  add: line.
		 ]] ]].
	snapLines do: [ :line |
		target parent addChild: line ].
	