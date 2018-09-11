copying
copyMe: evt
	target ifNotNil: [ | field newEvt|
		field := PREFieldPane titled: target title.
		field background: target background.
		target parent addChild: field.
		field relocate: 10@10 + target position.
		field addEventHandler: PREFieldOnFormInteraction new.  
		newEvt := evt asDragStartEvent.
		newEvt target: field.
		newEvt fire].
