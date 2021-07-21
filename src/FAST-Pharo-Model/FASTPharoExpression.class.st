Class {
	#name : #FASTPharoExpression,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTExpression',
	#classTraits : 'FASTTExpression classTrait',
	#instVars : [
		'#pharoArrayExpressionExpressionOwner => FMOne type: #FASTPharoArrayExpression opposite: #contents',
		'#pharoArrayLiteralExpressionExpressionOwner => FMOne type: #FASTPharoArrayLiteral opposite: #contents',
		'#pharoByteArrayLiteralExpressionExpressionOwner => FMOne type: #FASTPharoByteArrayLiteral opposite: #contents',
		'#pharoMessageReceiver => FMOne type: #FASTPharoMessageSend opposite: #receiver'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoExpression class >> annotation [

	<FMClass: #Expression super: #FASTPharoEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPharoExpression >> pharoArrayExpressionExpressionOwner [
	"Relation named: #pharoArrayExpressionExpressionOwner type: #FASTPharoArrayExpression opposite: #contents"

	<generated>
	<container>
	^ pharoArrayExpressionExpressionOwner
]

{ #category : #accessing }
FASTPharoExpression >> pharoArrayExpressionExpressionOwner: anObject [

	<generated>
	pharoArrayExpressionExpressionOwner := anObject
]

{ #category : #navigation }
FASTPharoExpression >> pharoArrayExpressionExpressionOwnerGroup [
	<generated>
	<navigation: 'PharoArrayExpressionExpressionOwner'>
	^ MooseSpecializedGroup with: self pharoArrayExpressionExpressionOwner
]

{ #category : #accessing }
FASTPharoExpression >> pharoArrayLiteralExpressionExpressionOwner [
	"Relation named: #pharoArrayLiteralExpressionExpressionOwner type: #FASTPharoArrayLiteral opposite: #contents"

	<generated>
	<container>
	^ pharoArrayLiteralExpressionExpressionOwner
]

{ #category : #accessing }
FASTPharoExpression >> pharoArrayLiteralExpressionExpressionOwner: anObject [

	<generated>
	pharoArrayLiteralExpressionExpressionOwner := anObject
]

{ #category : #navigation }
FASTPharoExpression >> pharoArrayLiteralExpressionExpressionOwnerGroup [
	<generated>
	<navigation: 'PharoArrayLiteralExpressionExpressionOwner'>
	^ MooseSpecializedGroup with: self pharoArrayLiteralExpressionExpressionOwner
]

{ #category : #accessing }
FASTPharoExpression >> pharoByteArrayLiteralExpressionExpressionOwner [
	"Relation named: #pharoByteArrayLiteralExpressionExpressionOwner type: #FASTPharoByteArrayLiteral opposite: #contents"

	<generated>
	<container>
	^ pharoByteArrayLiteralExpressionExpressionOwner
]

{ #category : #accessing }
FASTPharoExpression >> pharoByteArrayLiteralExpressionExpressionOwner: anObject [

	<generated>
	pharoByteArrayLiteralExpressionExpressionOwner := anObject
]

{ #category : #navigation }
FASTPharoExpression >> pharoByteArrayLiteralExpressionExpressionOwnerGroup [
	<generated>
	<navigation: 'PharoByteArrayLiteralExpressionExpressionOwner'>
	^ MooseSpecializedGroup with: self pharoByteArrayLiteralExpressionExpressionOwner
]

{ #category : #accessing }
FASTPharoExpression >> pharoMessageReceiver [
	"Relation named: #pharoMessageReceiver type: #FASTPharoMessageSend opposite: #receiver"

	<generated>
	<FMComment: 'The receiver of the pharo message'>
	<container>
	<derived>
	^ pharoMessageReceiver
]

{ #category : #accessing }
FASTPharoExpression >> pharoMessageReceiver: anObject [

	<generated>
	pharoMessageReceiver := anObject
]

{ #category : #navigation }
FASTPharoExpression >> pharoMessageReceiverGroup [
	<generated>
	<navigation: 'PharoMessageReceiver'>
	^ MooseSpecializedGroup with: self pharoMessageReceiver
]
