Class {
	#name : #BaselineOfFASTPharo,
	#superclass : #BaselineOf,
	#category : #BaselineOfFASTPharo
}

{ #category : #baselines }
BaselineOfFASTPharo >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: 'Developement version of FAST Pharo using FamixNG for Pharo.'.
			spec author: 'BenoitVerhaeghe'.
			spec timestamp: '26/05/2019 00:00'.
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfFASTPharo >> defineDependencies: spec [
	spec
		baseline: 'FAST'
		with: [ spec
				loads: #('default');
				repository: 'github://moosetechnology/FAST:master/src' ].
	spec
		baseline: 'PetitParser'
		with: [ spec
				loads: #('Smalltalk');
				repository: 'github://moosetechnology/PetitParser:master/src' ].
]

{ #category : #baselines }
BaselineOfFASTPharo >> defineGroups: spec [
	spec
		group: 'core'
			with: #('FAST-Pharo-Model-Extension' 'FAST-Pharo-Model' 'FAST-Pharo-Model-Generator');
		group: 'visitor'
			with: #('core' 'FAST-Pharo-Visitor');
		group: 'importer'
			with: #('core' 'FAST-Pharo-Importer')
]

{ #category : #baselines }
BaselineOfFASTPharo >> definePackages: spec [
	spec
		package: 'FAST-Pharo-Model' with: [ spec requires: #('FAST') ];
		package: 'FAST-Pharo-Model-Generator';
		package: 'FAST-Pharo-Model-Extension' with: [ spec requires: #('FAST-Pharo-Model') ];
		package: 'FAST-Pharo-Visitor' with: [ spec requires: #('FAST-Pharo-Model') ];
		package: 'FAST-Pharo-Importer' with: [ spec requires: #('PetitParser' 'FAST-Pharo-Model') ];
		package: 'FAST-TestResources-Pharo';
		package: 'FAST-Tests-Pharo-Importer' with: [ spec requires: #('FAST-Pharo-Importer' 'FAST-TestResources-Pharo') ]
]
