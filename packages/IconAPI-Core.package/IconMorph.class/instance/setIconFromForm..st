accessing
setIconFromForm: aForm 

	self originalForm: aForm.
	self scaledForm: aForm.
	
	^ self
		id: 'customForm';
		setAspectRatio: self calculateAspectRatio;
		updateLayout;
		yourself
