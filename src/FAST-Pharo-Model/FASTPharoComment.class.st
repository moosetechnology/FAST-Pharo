Class {
	#name : #FASTPharoComment,
	#superclass : #FASTPharoSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoComment class >> annotation [

	<MSEClass: #Comment super: #FASTPharoSourcedEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoComment class >> generatedSlotNames [
	<generated>
	'FASTPharoComment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoComment class >> generatedTraitNames [
	<generated>
	^ #(FamixTComment)
]

{ #category : #meta }
FASTPharoComment class >> requirements [

	<generated>
	^ {  }
]
