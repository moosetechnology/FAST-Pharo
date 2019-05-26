Class {
	#name : #FASTPharoSourceAnchor,
	#superclass : #FASTEntity,
	#traits : 'FamixTSourceAnchor + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceAnchor classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoSourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FASTEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoSourceAnchor class >> generatedSlotNames [
	<generated>
	'FASTPharoSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTSourceAnchor TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FASTPharoSourceAnchor class >> requirements [

	<generated>
	^ {  }
]
