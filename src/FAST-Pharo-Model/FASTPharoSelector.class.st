Class {
	#name : #FASTPharoSelector,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTNamedEntity',
	#classTraits : 'FASTTNamedEntity classTrait',
	#instVars : [
		'#parentMessageSend => FMOne type: #FASTPharoMessageSend opposite: #selector'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoSelector class >> annotation [

	<FMClass: #Selector super: #FASTPharoEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPharoSelector >> parentMessageSend [
	"Relation named: #parentMessageSend type: #FASTPharoMessageSend opposite: #selector"

	<generated>
	<FMComment: 'The sended of this selector'>
	<container>
	<derived>
	^ parentMessageSend
]

{ #category : #accessing }
FASTPharoSelector >> parentMessageSend: anObject [

	<generated>
	parentMessageSend := anObject
]

{ #category : #navigation }
FASTPharoSelector >> parentMessageSendGroup [
	<generated>
	<navigation: 'ParentMessageSend'>
	^ MooseSpecializedGroup with: self parentMessageSend
]
