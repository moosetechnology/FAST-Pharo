Class {
	#name : #FASTPharoAssociation,
	#superclass : #FASTPharoSourcedEntity,
	#traits : 'FamixTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FamixTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoAssociation class >> annotation [

	<FMClass: #Association super: #FASTPharoSourcedEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]
