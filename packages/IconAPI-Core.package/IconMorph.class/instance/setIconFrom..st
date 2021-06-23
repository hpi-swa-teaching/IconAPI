accessing
setIconFrom: aForm 

	self originalForm: aForm.
	self scaledForm: aForm.
	
	^ self 
		setAspectRatio: self calculateAspectRatio;
		updateLayout;
		yourself.
