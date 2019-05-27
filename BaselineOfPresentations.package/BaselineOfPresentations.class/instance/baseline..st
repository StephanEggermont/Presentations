baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'Brick' with: [ 
				spec repository: 'github://feenkcom/Brick/src' ].
		spec 
			package: #'Presentations-Drawing'.
]
