as yet unclassified
calculateSnapLines
	snapLines do: [ :line | target parent removeChild: line ].
	snapLines := OrderedCollection new.
	target parent childrenDo: [ :element |
		element ~= target ifTrue: [  
		((element bounds  left) - (target bounds left)) abs < 5 ifTrue: [ 
		element class = PRERectangleNode ifTrue: [ |line top bottom|
			top := element bounds top min: target bounds top.
			bottom := element bounds bottom max: target bounds bottom.
			line := BlLineElement new
				fromAnchor: (BlAbsolutePositionAnchor position: element bounds left @ top);
				toAnchor: (BlAbsolutePositionAnchor position: element bounds left @ bottom);
				border: (BlBorder builder 
					paint: Color red; 
					width: 0.5;
					opacity: 0.8;
					build);
				yourself.
			snapLines  add: line.
		 ]] ]].
	snapLines do: [ :line |
		target parent addChild: line ].
	