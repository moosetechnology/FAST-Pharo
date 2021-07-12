Class {
	#name : #FASTPharoEntity,
	#superclass : #MooseEntity,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #meta }
FASTPharoEntity class >> metamodel [

	<generated>
	^ FASTPharoModel metamodel
]
