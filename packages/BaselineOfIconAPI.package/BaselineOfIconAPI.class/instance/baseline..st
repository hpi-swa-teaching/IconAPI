baseline
baseline: spec
	<baseline>
  spec for: #common do:[
    spec
        "requirements for SwaLint"
        project: 'RefactoringBrowser' with: [
          spec
            className: 'ConfigurationOfRefactoringBrowser';
            versionString: #'stable';
            loads: #('Core' );
            repository: 'http://www.squeaksource.com/MetacelloRepository' ];
        "SwaLint setup"
        package: 'SwaLint-Preferences' with: [
          spec
            file: 'SwaLint-Preferences-cypress.1';
            repository: 'github://hpi-swa-teaching/SwaLint:main/packages'];
        package: 'SwaLint-Core' with: [
          spec
            file: 'SwaLint-Core-cypress.1';
            repository: 'github://hpi-swa-teaching/SwaLint:main/packages';
            requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
        package: 'SwaLint-PlugIns' with: [
          spec
            file: 'SwaLint-PlugIns-cypress.1';
            repository: 'github://hpi-swa-teaching/SwaLint:main/packages';
            requires: 'SwaLint-Core'];
          
        postLoadDoIt: #postLoad;

        "IconAPI setup"
	  package: 'JSON';
        package: 'IconAPI-Core';
        package: 'IconAPI-Debugging' with: [
          spec
            requires: #('IconAPI-Core')];
        package: 'IconAPI-Tests' with: [
          spec
            requires: #('IconAPI-Core' 'SwaLint-Core' 'SwaLint-PlugIns' 'IconAPI-Debugging' 'JSON')].

      spec
        group: 'default' with: #('IconAPI-Core' 'IconAPI-Debugging');
        group: 'tests' with: #('IconAPI-Tests')].