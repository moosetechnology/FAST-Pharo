Class {
	#name : #SmalltalkFastMethodParametersTestCase,
	#superclass : #SmalltalkFastMethodTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testMiddleMethodParameterNames [
	self
		assert: middleMethod parameters first name equals: 'a';
		assert: middleMethod parameters last name equals: 'b'
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testMiddleMethodParametersCount [
	self assert: middleMethod parameters size equals: 2
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testMiddleMethodParametersParent [
	middleMethod parameters do: [ :each | self assert: each parameterOwner equals: middleMethod ]
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testReturnMethodParameterName [
	self assert: returnMethod parameters first name equals: 'variable'
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testReturnMethodParametersCount [
	self assert: returnMethod parameters size equals: 1
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testReturnMethodParametersParent [
	returnMethod parameters do: [ :each | self assert: each parameterOwner equals: returnMethod ]
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSendMessageMethodParametersCount [
	self assert: sendMessageMethod parameters isEmpty
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSpaceshipMethodParameterNaming [
	self assert: spaceshipMethod parameters first name equals: 'other'
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSpaceshipMethodParametersCount [
	self assert: spaceshipMethod parameters size equals: 1
]

{ #category : #tests }
SmalltalkFastMethodParametersTestCase >> testSpaceshipMethodParametersParent [
	spaceshipMethod parameters do: [ :each | self assert: each parameterOwner equals: spaceshipMethod ]
]
