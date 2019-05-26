Class {
	#name : #FASTPharoAssociation,
	#superclass : #FASTPharoSourcedEntity,
	#traits : 'FamixTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FamixTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoAssociation class >> annotation [

	<MSEClass: #Association super: #FASTPharoSourcedEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoAssociation class >> generatedSlotNames [
	<generated>
	'FASTPharoAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoAssociation class >> generatedTraitNames [
	<generated>
	^ #(FamixTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FASTPharoAssociation class >> requirements [

	<generated>
	^ {  }
]
