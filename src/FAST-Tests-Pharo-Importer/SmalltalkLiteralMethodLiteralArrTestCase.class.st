Class {
	#name : #SmalltalkLiteralMethodLiteralArrTestCase,
	#superclass : #SmalltalkLiteralMethodTestCase,
	#instVars : [
		'array'
	],
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #running }
SmalltalkLiteralMethodLiteralArrTestCase >> setUp [
	super setUp.
	array := (literalMethod statements at: 7) expression expression
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayContentsCount [
		self assert: array contents size equals: 6
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFifthElementParent [
		self assert: (array contents at: 5) parentNode equals: array
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFifthElementType [
		self assert: (array contents at: 5) class equals: FASTBooleanLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFifthElementValue [
		self assert: (array contents at: 5) value equals: true
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFirstElementParent [
		self assert: (array contents at: 1) parentNode equals: array 
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFirstElementType [
		self assert: (array contents at: 1) class equals: FASTPharoNumberLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFirstElementValue [
		self assert: (array contents at: 1) value equals: 34
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFourthElementContentTypes [
	(array contents at: 4) contents do: [ :each | self assert: each class equals: FASTCharacterLiteral ]
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFourthElementContentsCount [
		self assert: (array contents at: 4) contents size equals: 3
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFourthElementContentsParent [
	(array contents at: 4) contents do: [ :each | self assert: each parentNode equals: (array contents at: 4) ]
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFourthElementContentsValues [
		self assert: ((array contents at: 4) contents at: 1) value equals: $a.
		self assert: ((array contents at: 4) contents at: 2) value equals: $r.
		self assert: ((array contents at: 4) contents at: 3) value equals: $r.
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFourthElementParent [
		self assert: (array contents at: 4) parentNode equals: array
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayFourthElementType [
		self assert: (array contents at: 4) class equals: FASTPharoArrayLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayLiteralType [
		self assert: array class equals: FASTPharoArrayLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySecondElementParent [
		self assert: (array contents at: 2) parentNode equals: array
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySecondElementType [
		self assert: (array contents at: 2) class equals: FASTStringLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySecondElementValue [
		self assert: (array contents at: 2) value equals: 'str'
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySixthElementContentTypes [
	(array contents at: 6) contents do: [ :each | self assert: each class equals: FASTPharoNumberLiteral ]
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySixthElementContentsCount [
		self assert: (array contents at: 6) contents size equals: 3
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySixthElementContentsParent [
	(array contents at: 6) contents do: [ :each | self assert: each parentNode equals: (array contents at: 6) ]
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySixthElementContentsValues [
		self assert: ((array contents at: 6) contents at: 1) value equals: 2.
		self assert: ((array contents at: 6) contents at: 2) value equals: 5.
		self assert: ((array contents at: 6) contents at: 3) value equals: 6.
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySixthElementParent [
		self assert: (array contents at: 6) parentNode equals: array
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArraySixthElementType [
		self assert: (array contents at: 6) class equals: FASTPharoByteArrayLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayThirdElementParent [
		self assert: (array contents at: 3) parentNode equals: array
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayThirdElementType [
		self assert: (array contents at: 3) class equals: FASTPharoSymbolLiteral
]

{ #category : #tests }
SmalltalkLiteralMethodLiteralArrTestCase >> testArrayThirdElementValue [
		self assert: (array contents at: 3) value equals: #sym
]
