Class {
	#name : #FASTPharoNamedEntity,
	#superclass : #FASTPharoSourcedEntity,
	#traits : 'FamixTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FASTPharoSourcedEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]
