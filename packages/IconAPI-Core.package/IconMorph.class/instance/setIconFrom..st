accessing
setIconFrom: aForm 

	self 
		originalForm: aForm;
		scaledForm: aForm.
	
	^ self 
		setAspectRatio: self calculateAspectRatio;
		updateLayout;
		yourself
