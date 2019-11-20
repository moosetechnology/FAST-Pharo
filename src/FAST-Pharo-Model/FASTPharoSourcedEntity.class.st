Class {
	#name : #FASTPharoSourcedEntity,
	#superclass : #FASTEntity,
	#traits : 'FamixTSourceEntity + FamixTWithComments',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithComments classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FASTEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]
