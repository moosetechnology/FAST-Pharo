Class {
	#name : #PharoFindScopeTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Resolution'
}

{ #category : #running }
PharoFindScopeTestCase >> modelClasses [
	^{ FastTesting . Object } asOrderedCollection 
]

{ #category : #tests }
PharoFindScopeTestCase >> testBlockScope [
	"tests that a FAST block (pharo block) has a scope and its parent is the method's scope"
	| block |
	block := scopeMethod statements first expression block.

	self assert: block scope notNil.
	self assert: block scope parents notEmpty.
	self assert: block scope parents first owner equals: scopeMethod
]

{ #category : #tests }
PharoFindScopeTestCase >> testClassScope [
	"tests that a FAST method has a scope and its parent is the class's scope"
	| mtdScope |
	mtdScope := middleMethod fastScope.
	self assert: mtdScope parents notEmpty.
	self assert: (mtdScope parents first owner isKindOf: FAMIXType).
	self assert: mtdScope parents first owner name equals: 'FastTesting'.
]

{ #category : #tests }
PharoFindScopeTestCase >> testExpressionNoScope [
	"tests that an expression has no scope"
	self assert: scopeMethod statements second expression fastScope isNil
]

{ #category : #tests }
PharoFindScopeTestCase >> testInnerBlockScope [
	"tests that a FAST block (here a pharo inner block) has a scope and its parent is the method's scope"
	| block |
	block := spaceshipMethod statements first expression arguments first block.

	self assert: block scope notNil.
	self assert: block scope parents first owner equals: spaceshipMethod
]

{ #category : #tests }
PharoFindScopeTestCase >> testMethodScope [
	"tests that FAST method has a scope"
	self assert: middleMethod fastScope notNil.
	self assert: middleMethod fastScope owner equals: middleMethod 
]

{ #category : #tests }
PharoFindScopeTestCase >> testNamespaceScope [
	"tests that a class creates a scope on-the-fly when asking scope of its method"
	| classScope |
	classScope := middleMethod fastScope parents first.
	self assert: classScope parents notEmpty.
	self assert: (classScope parents first owner isKindOf: FAMIXNamespace).
	self assert: classScope parents first owner name equals: 'Smalltalk'.
]

{ #category : #tests }
PharoFindScopeTestCase >> testStatementNoScope [
	"tests that a statement has no scope"
	self assert: scopeMethod statements third fastScope isNil
]
