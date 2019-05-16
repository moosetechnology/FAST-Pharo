"
A class defining various methods to test FAST Pharo
"
Class {
	#name : #FastTesting,
	#superclass : #Object,
	#instVars : [
		'instVar'
	],
	#category : #'FAST-TestResources-Pharo'
}

{ #category : #'test - methods' }
FastTesting >> <=> other [
	" this is the 'spaceship' method in the tests"
	self = other
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ 1 ]
]

{ #category : #'test - methods' }
FastTesting >> cascade [
	self
		<=> super asString;
		return: self;
		sendMessage;
		yourself
]

{ #category : #'test - methods' }
FastTesting >> lotsOfLiterals [
	| undefined array byteArr number character symbol string boolean |
	undefined := nil.
	number := 3456.
	character := $U.
	symbol := #pharo.
	string := 'hello world'.
	boolean := true.
	array := #( 34 'str' #sym #( $a $r $r ) true #[ 2 5 6 ] ).
	byteArr := #[ 2 3 57 84 0 ].
	^ {undefined . array . byteArr . number . character . symbol . 2 + 2}
]

{ #category : #'test - methods' }
FastTesting >> middleOf: a and: b [
	| sum |
	sum := a + b.
	^ sum / 2
]

{ #category : #'test - methods' }
FastTesting >> nest: condition1 in: condition2 within: condition3 with: collection [
	collection size timesRepeat: [
		condition3
			ifFalse: [
				condition2
					ifTrue: [ | some | ^ nil ]
					ifFalse: [ | none | condition1 ifTrue: [ ^ #some ] ] ] 
			ifTrue: [
				collection detect: [ :some | false ] ifNone: [ | none | ^ nil ] ] ]
]

{ #category : #'test - methods' }
FastTesting >> return: variable [
	^ variable
]

{ #category : #'test - methods' }
FastTesting >> scope [
	[ :c | c asString ].
	[ | d | d ].
	instVar := MooseModel root.
	self
]

{ #category : #'test - methods' }
FastTesting >> sendMessage [
	self return: super asString
]
