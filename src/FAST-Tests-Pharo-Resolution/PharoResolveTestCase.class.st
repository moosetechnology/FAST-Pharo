Class {
	#name : #PharoResolveTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Resolution'
}

{ #category : #running }
PharoResolveTestCase >> modelClasses [
	^{ FastTesting . Object } asOrderedCollection 
]

{ #category : #tests }
PharoResolveTestCase >> testAttributeResolve [
	| famixAtt symbol |
	symbol := scopeMethod statements third expression variable.
	famixAtt := model allAttributes detect: [ :att | att name = 'instVar' and: [ att belongsTo name = 'FastTesting' ] ].

	self assert:  (scopeMethod resolve: symbol) equals: famixAtt
]

{ #category : #tests }
PharoResolveTestCase >> testBlckLocalVarResolve [
	| famixVar symbol block |
	block := scopeMethod statements second expression block.
	symbol := block localVariables first.
	famixVar := model allLocalVariables detect: [:v | (v name = 'd') and: [ v belongsTo name = 'scope' ] ].

	self assert:  (block resolve: symbol) equals: famixVar
]

{ #category : #tests }
PharoResolveTestCase >> testBlckParameterResolve [
	| famixVar symbol block |
	block := scopeMethod statements first expression block.
	symbol := block parameters first.
	famixVar := model allLocalVariables detect: [:v | (v name = 'c') and: [ v belongsTo name = 'scope' ] ].

	self assert:  (block resolve: symbol) equals: famixVar
]

{ #category : #tests }
PharoResolveTestCase >> testClassResolve [
	| famixClass symbol |
	symbol := scopeMethod statements third expression expression receiver.
	famixClass := model allClasses detect: [ :c | c name = 'MooseModel' ].

	self assert:  (scopeMethod resolve: symbol) equals: famixClass.
]

{ #category : #tests }
PharoResolveTestCase >> testInheritedMethodResolve [
	| symbol famixMth |
	symbol := scopeMethod statements first expression block statements first expression selector.
	famixMth := model allMethods detect: [:m | (m name = 'asString') and: [ m belongsTo name = 'Object' ] ].

	self assert:  (scopeMethod fastScope lookup: symbol) equals: (OrderedCollection new add: famixMth ; yourself).
]

{ #category : #tests }
PharoResolveTestCase >> testMethodResolve [
	| famixMthd symbol |
	symbol := cascadeMethod statements first expression messages first selector.
	famixMthd := spaceshipMethod parentNode.

	self assert:  (cascadeMethod resolve: symbol) equals: famixMthd
]

{ #category : #tests }
PharoResolveTestCase >> testMthParameterResolve [
	| famixAtt symbol |
	symbol := middleMethod statements first expression expression receiver.
	famixAtt := model allParameters detect: [:att | (att name = 'a') and: [ att belongsTo name = 'middleOf:and:' ] ].

	self assert:  (middleMethod resolve: symbol) equals: famixAtt
]

{ #category : #tests }
PharoResolveTestCase >> testMthdLocalVarResolve [
	| famixVar symbol |
	symbol := middleMethod statements first expression variable.
	famixVar := model allLocalVariables detect: [:v | (v name = 'sum') and: [ v belongsTo name = 'middleOf:and:' ] ].

	self assert:  (middleMethod resolve: symbol) equals: famixVar
]
