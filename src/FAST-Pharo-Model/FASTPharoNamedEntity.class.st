Class {
	#name : #FASTPharoNamedEntity,
	#superclass : #FASTPharoSourcedEntity,
	#traits : 'FamixTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FASTPharoSourcedEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoNamedEntity class >> generatedSlotNames [
	<generated>
	'FASTPharoNamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FASTPharoNamedEntity class >> requirements [

	<generated>
	^ {  }
]
