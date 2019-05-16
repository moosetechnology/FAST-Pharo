Class {
	#name : #ConfigurationOfFASTPharo,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#category : #ConfigurationOfFASTPharo
}

{ #category : #private }
ConfigurationOfFASTPharo class >> ensureMetacello [
	Smalltalk at: #MetacelloProject ifAbsent: [
		Gofer new
				url: 'http://seaside.gemstone.com/ss/metacello';
				package: 'ConfigurationOfMetacello';
				load.
		(Smalltalk at: #ConfigurationOfMetacello) loadLatestVersion ]
]

{ #category : #'metacello tool support' }
ConfigurationOfFASTPharo class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #loading }
ConfigurationOfFASTPharo class >> loadDefault [
	self loadDevelopment
]

{ #category : #loading }
ConfigurationOfFASTPharo class >> loadDevelopment [
	(self project version: #development) load
]

{ #category : #accessing }
ConfigurationOfFASTPharo class >> project [

	^self new project
]

{ #category : #baselines }
ConfigurationOfFASTPharo >> baseline01: spec [
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Famix AST extentions for Pharo
Stable development version with printer, parsing and parentNode refactored'.
		spec author: 'VincentBlondeau'.
		spec timestamp: '2/7/2014 16:38'.
		spec repository: 'http://www.smalltalkhub.com/mc/Moose/FASTPharo/main'.
		spec project: 'FASTCore' with: [
				spec
					className: 'ConfigurationOfFASTCore';
					versionString: #'stable';
					repository: 'http://www.smalltalkhub.com/mc/Moose/FASTCore/main' ].
		spec 
			package: 'FAST-Pharo-Model' with: [
				spec requires: #('FASTCore' ). ];
			package: 'FAST-Pharo-Importer' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-Pharo-Tools' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-Pharo-Resolution' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-TestResources-Pharo';
			package: 'FAST-Tests-Pharo-Importer' with: [
				spec requires: #('FAST-TestResources-Pharo' ). ];
			package: 'FAST-Tests-Pharo-Tools' with: [
				spec requires: #('FAST-Tests-Pharo-Importer' ). ];
			package: 'FAST-Tests-Pharo-Resolution' with: [
				spec requires: #('FAST-Tests-Pharo-Importer' ). ].
		spec 
			group: 'default' with: #('Main' 'Test' );
			group: 'Main' with: #('FAST-Pharo-Model' 'FAST-Pharo-Importer' 'FAST-Pharo-Tools' 'FAST-Pharo-Resolution' );
			group: 'Test' with: #('FAST-Tests-Pharo-Importer' 'FAST-Tests-Pharo-Tools' 'FAST-Tests-Pharo-Resolution' 'FAST-TestResources-Pharo' ). ].

]

{ #category : #baselines }
ConfigurationOfFASTPharo >> baseline10: spec [
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.smalltalkhub.com/mc/Moose/FASTPharo/main'.
		spec project: 'FASTCore' with: [
				spec
					className: 'ConfigurationOfFASTCore';
					versionString: #'development';
					repository: 'http://www.smalltalkhub.com/mc/Moose/FASTCore/main' ].
		spec 
			package: 'FAST-TestResources-Pharo';
			package: 'FAST-Tests-Pharo-Importer' with: [
				spec requires: #('FAST-TestResources-Pharo' ). ];
			package: 'FAST-Tests-Pharo-Tools' with: [
				spec requires: #('FAST-Tests-Pharo-Importer' ). ];
			package: 'FAST-Tests-Pharo-Resolution' with: [
				spec requires: #('FAST-Tests-Pharo-Importer' ). ];
			package: 'FAST-Pharo-Model' with: [
				spec requires: #('FASTCore' ). ];
			package: 'FAST-Pharo-Resolution' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-Pharo-Tools' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-Pharo-Importer' with: [
				spec requires: #('FAST-Pharo-Model' ). ].
		spec 
			group: 'default' with: #('Main' 'Test' );
			group: 'Main' with: #('FAST-Pharo-Model' 'FAST-Pharo-Importer' 'FAST-Pharo-Tools' 'FAST-Pharo-Resolution' );
			group: 'Test' with: #('FAST-Tests-Pharo-Importer' 'FAST-Tests-Pharo-Tools' 'FAST-Tests-Pharo-Resolution' 'FAST-TestResources-Pharo' ). ].

]

{ #category : #baselines }
ConfigurationOfFASTPharo >> baseline11: spec [
	<version: '1.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.smalltalkhub.com/mc/Moose/FASTPharo/main'.
		spec project: 'FASTCore' with: [
				spec
					className: 'ConfigurationOfFASTCore';
					versionString: #'development';
					repository: 'http://www.smalltalkhub.com/mc/Moose/FASTCore/main' ].
			spec
				project: 'PetitSmalltalk'
				with: [ spec
						className: #ConfigurationOfPetitSmalltalk;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/' ].
		spec 
			package: 'FAST-TestResources-Pharo';
			package: 'FAST-Tests-Pharo-Importer' with: [
				spec requires: #('FAST-TestResources-Pharo' ). ];
			package: 'FAST-Tests-Pharo-Tools' with: [
				spec requires: #('FAST-Tests-Pharo-Importer' ). ];
			package: 'FAST-Tests-Pharo-Resolution' with: [
				spec requires: #('FAST-Tests-Pharo-Importer' ). ];
			package: 'FAST-Pharo-Model' with: [
				spec requires: #('FASTCore' ). ];
			package: 'FAST-Pharo-Resolution' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-Pharo-Tools' with: [
				spec requires: #('FAST-Pharo-Model' ). ];
			package: 'FAST-Pharo-Importer' with: [
				spec requires: #('FAST-Pharo-Model' 'PetitSmalltalk' ). ].
		spec 
			group: 'default' with: #('Main' 'Test' );
			group: 'Main' with: #('FAST-Pharo-Model' 'FAST-Pharo-Importer' 'FAST-Pharo-Tools' 'FAST-Pharo-Resolution' );
			group: 'Test' with: #('FAST-Tests-Pharo-Importer' 'FAST-Tests-Pharo-Tools' 'FAST-Tests-Pharo-Resolution' 'FAST-TestResources-Pharo' ). ].

]

{ #category : #'symbolic versions' }
ConfigurationOfFASTPharo >> development: spec [
	<symbolicVersion: #'development'>

	spec for: #'common' version: '1.1-baseline'.

]

{ #category : #accessing }
ConfigurationOfFASTPharo >> project [

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project]
]

{ #category : #'symbolic versions' }
ConfigurationOfFASTPharo >> stable: spec [
	<symbolicVersion: #'stable'>

	spec for: #'common' version: '0.1'.

]

{ #category : #versions }
ConfigurationOfFASTPharo >> version01: spec [
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1'.
		spec author: 'VincentBlondeau'.
		spec timestamp: '2/7/2014 16:38'.
		spec project: 'FASTCore' with: '0.1'.
		spec 
			package: 'FAST-Pharo-Model' with: 'FAST-Pharo-Model-VincentBlondeau.24';
			package: 'FAST-Pharo-Importer' with: 'FAST-Pharo-Importer-VincentBlondeau.16';
			package: 'FAST-Pharo-Tools' with: 'FAST-Pharo-Tools-VincentBlondeau.12';
			package: 'FAST-Pharo-Resolution' with: 'FAST-Pharo-Resolution-VincentBlondeau.13';
			package: 'FAST-TestResources-Pharo' with: 'FAST-TestResources-Pharo-VincentBlondeau.7';
			package: 'FAST-Tests-Pharo-Importer' with: 'FAST-Tests-Pharo-Importer-VincentBlondeau.16';
			package: 'FAST-Tests-Pharo-Tools' with: 'FAST-Tests-Pharo-Tools-VincentBlondeau.8';
			package: 'FAST-Tests-Pharo-Resolution' with: 'FAST-Tests-Pharo-Resolution-VincentBlondeau.12'. ].

]
