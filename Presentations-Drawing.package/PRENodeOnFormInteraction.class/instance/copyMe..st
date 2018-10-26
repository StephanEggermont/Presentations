copying
copyMe: evt
	target ifNotNil: [ | field newEvt|
		field := target class new.
		field background: target background.
		field border: target border.
		field size: target extent.
		target parent addChild: field.
		field relocate: 10@10 + target position.
		field addEventHandler: PRENodeOnFormInteraction default.  
		newEvt := evt asDragStartEvent.
		newEvt target: field.
		newEvt fire].
