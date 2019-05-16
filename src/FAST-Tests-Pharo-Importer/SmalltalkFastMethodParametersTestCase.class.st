Class {
	#name : #SmalltalkFastMethodParametersTestCase,
	#superclass : #SmalltalkFastMethodTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testMiddleMethodParameterNames [
	self
		assert: middleMethod parameters first variableName = 'a';
		assert: middleMethod parameters last variableName = 'b'
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testMiddleMethodParametersCount [
	self assert: middleMethod parameters size equals: 2
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testMiddleMethodParametersParent [
	middleMethod parameters do: [ :each | self assert: each parentNode equals: middleMethod ]
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testReturnMethodParameterName [
	self assert: returnMethod parameters first variableName = 'variable'
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testReturnMethodParametersCount [
	self assert: returnMethod parameters size equals: 1
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testReturnMethodParametersParent [
	returnMethod parameters do: [ :each | self assert: each parentNode equals: returnMethod ]
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSendMessageMethodParametersCount [
	self assert: sendMessageMethod parameters isEmpty
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSpaceshipMethodParameterNaming [
	self assert: spaceshipMethod parameters first variableName = 'other'
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSpaceshipMethodParametersCount [
	self assert: spaceshipMethod parameters size equals: 1
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSpaceshipMethodParametersParent [
	spaceshipMethod parameters do: [ :each | self assert: each parentNode equals: spaceshipMethod ]
]
