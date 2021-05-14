baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'IconAPI-Core';
				package: 'IconAPI-Tests' with: [spec requires: #('default')];
				package: 'IconAPI-Debugging' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('IconAPI-Core' );
				group: 'tests' with: #('IconAPI-Tests');
				group: 'debugging' with: #('IconAPI-Debugging')];
				yourself