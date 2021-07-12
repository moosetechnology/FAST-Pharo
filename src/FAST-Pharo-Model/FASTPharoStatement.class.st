Class {
	#name : #FASTPharoStatement,
	#superclass : #FASTPharoEntity,
	#instVars : [
		'#pharoBlockStatementOwner => FMOne type: #FASTPharoBlockDefinition opposite: #statements',
		'#pharoMethodStatementOwner => FMOne type: #FASTPharoMethodEntity opposite: #statements'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoStatement class >> annotation [

	<FMClass: #Statement super: #FASTPharoEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPharoStatement >> pharoBlockStatementOwner [
	"Relation named: #pharoBlockStatementOwner type: #FASTPharoBlockDefinition opposite: #statements"

	<generated>
	<container>
	^ pharoBlockStatementOwner
]

{ #category : #accessing }
FASTPharoStatement >> pharoBlockStatementOwner: anObject [

	<generated>
	pharoBlockStatementOwner := anObject
]

{ #category : #navigation }
FASTPharoStatement >> pharoBlockStatementOwnerGroup [
	<generated>
	<navigation: 'PharoBlockStatementOwner'>
	^ MooseSpecializedGroup with: self pharoBlockStatementOwner
]

{ #category : #accessing }
FASTPharoStatement >> pharoMethodStatementOwner [
	"Relation named: #pharoMethodStatementOwner type: #FASTPharoMethodEntity opposite: #statements"

	<generated>
	<container>
	^ pharoMethodStatementOwner
]

{ #category : #accessing }
FASTPharoStatement >> pharoMethodStatementOwner: anObject [

	<generated>
	pharoMethodStatementOwner := anObject
]

{ #category : #navigation }
FASTPharoStatement >> pharoMethodStatementOwnerGroup [
	<generated>
	<navigation: 'PharoMethodStatementOwner'>
	^ MooseSpecializedGroup with: self pharoMethodStatementOwner
]
