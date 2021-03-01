Extension { #name : #FASTExpression }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayExpressionExpressionOwner [
	"Relation named: #pharoArrayExpressionExpressionOwner type: #FASTPharoArrayExpression opposite: #contents"

	<generated>
	<container>
	<FMProperty: #pharoArrayExpressionExpressionOwner type: #FASTPharoArrayExpression opposite: #contents>
	<package: #'FAST-Pharo-Model'>
	^ self attributeAt: #pharoArrayExpressionExpressionOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayExpressionExpressionOwner: anObject [

	<generated>
	self attributeAt: #pharoArrayExpressionExpressionOwner put: (FMMultivalueLink on: self update: #contents from: self pharoArrayExpressionExpressionOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayLiteralExpressionExpressionOwner [
	"Relation named: #pharoArrayLiteralExpressionExpressionOwner type: #FASTPharoArrayLiteral opposite: #contents"

	<generated>
	<container>
	<FMProperty: #pharoArrayLiteralExpressionExpressionOwner type: #FASTPharoArrayLiteral opposite: #contents>
	<package: #'FAST-Pharo-Model'>
	^ self attributeAt: #pharoArrayLiteralExpressionExpressionOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayLiteralExpressionExpressionOwner: anObject [

	<generated>
	self attributeAt: #pharoArrayLiteralExpressionExpressionOwner put: (FMMultivalueLink on: self update: #contents from: self pharoArrayLiteralExpressionExpressionOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoByteArrayLiteralExpressionExpressionOwner [
	"Relation named: #pharoByteArrayLiteralExpressionExpressionOwner type: #FASTPharoByteArrayLiteral opposite: #contents"

	<generated>
	<container>
	<FMProperty: #pharoByteArrayLiteralExpressionExpressionOwner type: #FASTPharoByteArrayLiteral opposite: #contents>
	<package: #'FAST-Pharo-Model'>
	^ self attributeAt: #pharoByteArrayLiteralExpressionExpressionOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoByteArrayLiteralExpressionExpressionOwner: anObject [

	<generated>
	self attributeAt: #pharoByteArrayLiteralExpressionExpressionOwner put: (FMMultivalueLink on: self update: #contents from: self pharoByteArrayLiteralExpressionExpressionOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageArgumentOwner [
	"Relation named: #pharoMessageArgumentOwner type: #FASTPharoMessageSend opposite: #arguments"

	<generated>
	<FMComment: 'The message which own this argument'>
	<container>
	<FMProperty: #pharoMessageArgumentOwner type: #FASTPharoMessageSend opposite: #arguments>
	<package: #'FAST-Pharo-Model'>
	^ self attributeAt: #pharoMessageArgumentOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageArgumentOwner: anObject [

	<generated>
	self attributeAt: #pharoMessageArgumentOwner put: (FMMultivalueLink on: self update: #arguments from: self pharoMessageArgumentOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageReceiver [
	"Relation named: #pharoMessageReceiver type: #FASTPharoMessageSend opposite: #receiver"

	<generated>
	<FMComment: 'The receiver of the pharo message'>
	<container>
	<derived>
	<FMProperty: #pharoMessageReceiver type: #FASTPharoMessageSend opposite: #receiver>
	<package: #'FAST-Pharo-Model'>
	^ self attributeAt: #pharoMessageReceiver ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageReceiver: anObject [

	<generated>
	(self attributeAt: #pharoMessageReceiver ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self pharoMessageReceiver.
		self attributeAt: #pharoMessageReceiver put: anObject.
		otherSide receiver: nil ]
	ifNotNil: [ 
		self attributeAt: #pharoMessageReceiver put: anObject.
		anObject receiver: self ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoParentAssignmentExpression [
	"Relation named: #pharoParentAssignmentExpression type: #FASTPharoAssignmentExpression opposite: #expression"

	<generated>
	<container>
	<derived>
	<FMProperty: #pharoParentAssignmentExpression type: #FASTPharoAssignmentExpression opposite: #expression>
	<package: #'FAST-Pharo-Model'>
	^ self attributeAt: #pharoParentAssignmentExpression ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoParentAssignmentExpression: anObject [

	<generated>
	(self attributeAt: #pharoParentAssignmentExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self pharoParentAssignmentExpression.
		self attributeAt: #pharoParentAssignmentExpression put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #pharoParentAssignmentExpression put: anObject.
		anObject expression: self ]
]
