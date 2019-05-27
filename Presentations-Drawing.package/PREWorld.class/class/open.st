instance creation
open
	<script: 'self open'>
	| aSpace |
	
	aSpace := BlSpace new.
	aSpace host: BlOSWindowHost default.
	aSpace title: 'Present'.
	aSpace addChild: self new.
	aSpace extent: 200@500.
	aSpace show