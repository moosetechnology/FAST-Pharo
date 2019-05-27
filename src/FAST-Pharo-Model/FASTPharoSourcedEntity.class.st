Class {
	#name : #FASTPharoSourcedEntity,
	#superclass : #FASTEntity,
	#traits : 'FamixTWithComments + FamixTWithSourceAnchor + FamixTWithSourceLanguage',
	#classTraits : 'FamixTWithComments classTrait + FamixTWithSourceAnchor classTrait + FamixTWithSourceLanguage classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoSourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FASTEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoSourcedEntity class >> generatedSlotNames [
	<generated>
	'FASTPharoSourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithComments FamixTWithSourceAnchor FamixTWithSourceLanguage)
]

{ #category : #meta }
FASTPharoSourcedEntity class >> requirements [

	<generated>
	^ {  }
]
