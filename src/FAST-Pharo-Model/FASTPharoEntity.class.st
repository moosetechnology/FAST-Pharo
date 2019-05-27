Class {
	#name : #FASTPharoEntity,
	#superclass : #MooseEntity,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoEntity class >> generatedSlotNames [
	<generated>
	'FASTPharoEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoEntity class >> metamodel [

	<generated>
	^ (self class environment at: #FASTPharoMetamodelGenerator) metamodel
]

{ #category : #meta }
FASTPharoEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FASTPharoEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FASTPharoEntity >> isType [

	<generated>
	^ false
]
