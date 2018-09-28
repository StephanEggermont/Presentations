baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'Brick' with: [ 
				spec repository: 'github://pharo-graphics/Brick/src' ].
		spec 
			package: #'Presentations-Drawing'.
]
