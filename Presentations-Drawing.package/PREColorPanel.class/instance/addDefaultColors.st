adding
addDefaultColors
	#(yellow paleGreen paleBlue green) do: [ :colorName | 
		self addColorWell: (Color perform: colorName)] 
