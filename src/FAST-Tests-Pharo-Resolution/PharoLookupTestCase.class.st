Class {
	#name : #PharoLookupTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Resolution'
}

{ #category : #running }
PharoLookupTestCase >> modelClasses [
	^{ FastTesting . Object } asOrderedCollection 
]

{ #category : #tests }
PharoLookupTestCase >> testAttributeLookup [
	"Tests that lookup finds a variable matching an attribute"
	| famixAtt symbol |
	symbol := scopeMethod statements third expression variable.
	famixAtt := model allAttributes detect: [ :att | att name = 'instVar' and: [ att belongsTo name = 'FastTesting' ] ].

	self assert: (scopeMethod fastScope lookup: symbol) equals: (OrderedCollection new add: famixAtt ; yourself).
]

{ #category : #tests }
PharoLookupTestCase >> testBlckLocalVarLookup [
	"Tests that lookup finds a block local variable"
	| famixVar symbol block |
	block := scopeMethod statements second expression block.
	symbol := block localVariables first.
	famixVar := model allLocalVariables detect: [:v | (v name = 'd') and: [ v belongsTo name = 'scope' ] ].

	self assert: (block scope lookup: symbol) equals: (OrderedCollection new add: famixVar ; yourself)
]

{ #category : #tests }
PharoLookupTestCase >> testBlckParameterLookup [
	| famixVar symbol block |
	block := scopeMethod statements first expression block.
	symbol := block parameters first.
	famixVar := model allLocalVariables detect: [:v | (v name = 'c') and: [ v belongsTo name = 'scope' ] ].

	self assert: (block scope lookup: symbol) equals: (OrderedCollection new add: famixVar ; yourself)
]

{ #category : #tests }
PharoLookupTestCase >> testClassLookup [
	"lookups a class name found in a method's code"
	| famixClass symbol found |
	symbol := scopeMethod statements third expression expression receiver variableName.
	famixClass := model allClasses detect: [ :c | c name = 'MooseModel' ].

	found := scopeMethod fastScope lookup: symbol.
	self assert: found notEmpty.
	self assert: (found includes: famixClass).
	self assert: (found allSatisfy: [ :e | e name  = 'MooseModel' ])
]

{ #category : #tests }
PharoLookupTestCase >> testInheritedMethodLookup [
	"tests looking up a method that is inherited by the class that uses it"
	| symbol famixMth |
	symbol := scopeMethod statements first expression block statements first expression selector.
	famixMth := model allMethods detect: [:m | (m name = 'asString') and: [ m belongsTo name = 'Object' ] ].

	self assert:  (scopeMethod fastScope lookup: symbol) equals: (OrderedCollection new add: famixMth ; yourself).
]

{ #category : #tests }
PharoLookupTestCase >> testMethodLookup [
	| famixMthd symbol |
	symbol := cascadeMethod statements first expression messages first selector.
	famixMthd := spaceshipMethod parentNode.

	self assert: (cascadeMethod fastScope lookup: symbol) size equals: 1.
	self assert: (cascadeMethod fastScope lookup: symbol) first equals: famixMthd

]

{ #category : #tests }
PharoLookupTestCase >> testMthParameterLookup [
	"tests looking up a parameter of a method"
	| famixAtt symbol |
	symbol := middleMethod statements first expression expression receiver.
	famixAtt := model allParameters detect: [:att | (att name = 'a') and: [ att belongsTo name = 'middleOf:and:' ] ].

	self assert:  (middleMethod fastScope lookup: symbol) equals:  (OrderedCollection new add: famixAtt ; yourself)
]

{ #category : #tests }
PharoLookupTestCase >> testMthdLocalVarLookup [
	| famixVar symbol |
	symbol := middleMethod statements first expression variable.
	famixVar := model allLocalVariables detect: [:v | (v name = 'sum') and: [ v belongsTo name = 'middleOf:and:' ] ].

	self assert:  (middleMethod fastScope lookup: symbol) equals:  (OrderedCollection new add: famixVar ; yourself)
]
