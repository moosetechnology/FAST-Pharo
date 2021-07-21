Class {
	#name : #SmalltalkLiteralMethodExpressionArrTestCase,
	#superclass : #SmalltalkLiteralMethodTestCase,
	#instVars : [
		'array'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkLiteralMethodExpressionArrTestCase >> setUp [
	super setUp.

	array := (literalMethod statements at: 9) expression
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayByLastContentsType [
	array contents asArray allButLast do: [ :each | self assert: each class equals: FASTPharoVariableExpression ]
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayContentsParent [
	array contents do: [ :each | self assert: each pharoArrayExpressionExpressionOwner equals: array  ]
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayFifthVariableName [
	self assert: ((array contents at: 5) isKindOf: FASTPharoVariableExpression).
	self assert: (array contents at: 5) name equals: 'character'
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayFirstVariableName [
	self assert: ((array contents at: 1) isKindOf: FASTPharoVariableExpression).
	self assert: (array contents at: 1) name equals: 'undefined'
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayFourthVariableName [
	self assert: ((array contents at: 4) isKindOf: FASTPharoVariableExpression).
	self assert: (array contents at: 4) name equals: 'number'
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayLastContentType [
	self assert: array contents last class equals: FASTPharoMessageSend
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayLastElementSelectorName [
	self assert: array contents last invoked name equals: '+'
	

]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayLastElementSelectorParent [
	self assert: array contents last invoked invokedIn equals: array contents last
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayParent [
		self assert: array returnOwner equals: (literalMethod statements at: 9)
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArraySecondVariableName [
	self assert: ((array contents at: 2) isKindOf: FASTPharoVariableExpression).
	self assert: (array contents at: 2) name equals: 'array'
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArraySixthVariableName [
	self assert: ((array contents at: 6) isKindOf: FASTPharoVariableExpression).
	self assert: (array contents at: 6) name equals: 'symbol'
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayThirdVariableName [
	self assert: ((array contents at: 3) isKindOf: FASTPharoVariableExpression).
	self assert: (array contents at: 3) name equals: 'byteArr'
]

{ #category : #tests }
SmalltalkLiteralMethodExpressionArrTestCase >> testArrayType [
		self assert: array class equals: FASTPharoArrayExpression
]
