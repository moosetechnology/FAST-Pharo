Class {
	#name : #SmalltalkLiteralMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testBooleanLiteralParent [
	self assert: (literalMethod statements at: 6) expression expression parentNode equals: (literalMethod statements at: 6) expression
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testBooleanLiteralType [
	self assert: (literalMethod statements at: 6) expression expression class equals: FASTBooleanLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testBooleanLiteralValue [
	self assert: (literalMethod statements at: 6) expression expression value equals: 'true'
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByLastExpressionsParent [
	literalMethod statements asArray allButLast do: [ :statement |
		self assert: statement expression class equals: FASTPharoAssignmentExpression ]

]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByLastExpressionsType [
	literalMethod statements asArray allButLast do: [ :statement |
		self assert: statement expression class equals: FASTPharoAssignmentExpression ]

]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByLastStatementsType [
	literalMethod statements asArray allButLast do: [ :statement |
		self assert: statement class equals: FASTExpressionStatement ]
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayContentsCount [
	self assert: (literalMethod statements at: 8) expression expression contents size equals: 5
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayContentsParent [
	(literalMethod statements at: 8) expression expression contents
		do: [ :node | self assert: node parentNode equals: (literalMethod statements at: 8) expression expression ]
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralContentsParent [
	(literalMethod statements at: 8) expression expression contents
		do: [ :each | self assert: each parentNode equals: (literalMethod statements at: 8) expression expression ]
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralContentsType [
	(literalMethod statements at: 8) expression expression contents do: [:each |
		self assert: each class equals: FASTPharoNumberLiteral]
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralContentsValues [
	self assert: ((literalMethod statements at: 8) expression expression contents at: 1) value equals: '2'.
	self assert: ((literalMethod statements at: 8) expression expression contents at: 2) value equals: '3'.
	self assert: ((literalMethod statements at: 8) expression expression contents at: 3) value equals: '57'.
	self assert: ((literalMethod statements at: 8) expression expression contents at: 4) value equals: '84'.
	self assert: ((literalMethod statements at: 8) expression expression contents at: 5) value equals: '0'
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralParent [
	self
		assert: (literalMethod statements at: 8) expression expression parentNode
		equals: (literalMethod statements at: 8) expression 
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralType [
		self assert: (literalMethod statements at: 8) expression expression class equals: FASTPharoByteArrayLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralValue [
	self assert: (literalMethod statements at: 8) expression expression value equals: '#[ 2 3 57 84 0 ]'
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testByteArrayLiteralValueParent [
	(literalMethod statements at: 8) expression expression contents
		do: [ :node | self assert: node parentNode equals: (literalMethod statements at: 8) expression expression ]
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testCharacterLiteralParent [
	self
		assert: (literalMethod statements at: 3) expression expression parentNode
		equals: (literalMethod statements at: 3) expression
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testCharacterLiteralType [
		self assert: (literalMethod statements at: 3) expression expression class equals: FASTCharacterLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testCharacterLiteralValue [
		self assert: (literalMethod statements at: 3) expression expression value equals: '$U'
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testLastExpressionParent [
	self assert: literalMethod statements last returnedExpression parentNode equals: literalMethod statements last 

]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testLastExpressionType [
	self assert: literalMethod statements last returnedExpression class equals: FASTPharoArrayExpression
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testLastStatementType [
	self assert: literalMethod statements last class equals: FASTReturnStatement
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testNumberLiteralParent [
	self
		assert: (literalMethod statements at: 2) expression expression parentNode
		equals: (literalMethod statements at: 2) expression
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testNumberLiteralType [
		self assert: (literalMethod statements at: 2) expression expression class equals: FASTPharoNumberLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testNumberLiteralValue [
		self assert: (literalMethod statements at: 2) expression expression value equals: '3456'
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testStatementsCount [
	self assert: literalMethod statements size equals: 9
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testStatementsParent [
	literalMethod statements do: [ :statement |
		self assert: statement parentNode equals: literalMethod statementBlock ]
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testStringLiteralParent [
	self
		assert: (literalMethod statements at: 5) expression expression parentNode
		equals: (literalMethod statements at: 5) expression
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testStringLiteralType [
		self assert: (literalMethod statements at: 5) expression expression class equals: FASTStringLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testStringLiteralValue [
		self assert: (literalMethod statements at: 5) expression expression value equals: '''hello world'''
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testSymbolLiteralParent [
	self
		assert: (literalMethod statements at: 4) expression expression parentNode
		equals: (literalMethod statements at: 4) expression
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testSymbolLiteralType [
		self assert: (literalMethod statements at: 4) expression expression class equals: FASTPharoSymbolLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testSymbolLiteralValue [
		self assert: (literalMethod statements at: 4) expression expression value equals: '#pharo'
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testUndefinedLiteralParent [
		self assert: (literalMethod statements at: 1) expression expression parentNode equals: (literalMethod statements at: 1) expression 
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testUndefinedLiteralType [
		self assert: (literalMethod statements at: 1) expression expression class equals: FASTNullPointerLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodTestCase >> testUndefinedLiteralValue [
		self assert: (literalMethod statements at: 1) expression expression value equals: 'nil'
]
