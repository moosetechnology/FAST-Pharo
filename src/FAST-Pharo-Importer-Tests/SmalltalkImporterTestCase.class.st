Class {
	#name : #SmalltalkImporterTestCase,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'sendMessageMethod',
		'returnMethod',
		'middleMethod',
		'spaceshipMethod',
		'cascadeMethod',
		'allMethods',
		'literalMethod',
		'scopeMethod',
		'nestMethod'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkImporterTestCase >> getFastMethodFromModelByName: methodName [

	^ (model allMethods detect: [ :method | method name = methodName ]) generateFAST
]

{ #category : #running }
SmalltalkImporterTestCase >> modelClasses [
	^ OrderedCollection with: FastTesting
]

{ #category : #running }
SmalltalkImporterTestCase >> setUp [
	super setUp.
	model := MooseModel new.
	MoosePharoImporterTask new
		factory: SmalltalkMetamodelFactory; 
		importerClass: SmalltalkImporter;
		model: model;
		addClasses: self modelClasses;
		run.

	self setUpMethods
]

{ #category : #running }
SmalltalkImporterTestCase >> setUpMethods [
	returnMethod      := self getFastMethodFromModelByName: 'return:'.
	literalMethod     := self getFastMethodFromModelByName: 'lotsOfLiterals'.
	sendMessageMethod := self getFastMethodFromModelByName: 'sendMessage'.
	middleMethod      := self getFastMethodFromModelByName: 'middleOf:and:'.
	spaceshipMethod   := self getFastMethodFromModelByName: '<=>'.
	cascadeMethod     := self getFastMethodFromModelByName: 'cascade'.
	scopeMethod       := self getFastMethodFromModelByName: 'scope'.
	nestMethod        := self getFastMethodFromModelByName: 'nest:in:within:with:'.
	
	allMethods := {literalMethod . sendMessageMethod . spaceshipMethod . returnMethod . middleMethod . cascadeMethod . scopeMethod . nestMethod}
]
