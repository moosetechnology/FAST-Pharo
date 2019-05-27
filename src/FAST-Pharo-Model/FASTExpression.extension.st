Extension { #name : #FASTExpression }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayExpressionExpressionOwner [

	<generated>
	<container>

	<MSEProperty: #pharoArrayExpressionExpressionOwner type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoArrayExpressionExpressionOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayExpressionExpressionOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoArrayExpressionExpressionOwner put: (FMMultivalueLink on: self update: #contents from: self pharoArrayExpressionExpressionOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayLiteralExpressionExpressionOwner [

	<generated>
	<container>

	<MSEProperty: #pharoArrayLiteralExpressionExpressionOwner type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoArrayLiteralExpressionExpressionOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoArrayLiteralExpressionExpressionOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoArrayLiteralExpressionExpressionOwner put: (FMMultivalueLink on: self update: #contents from: self pharoArrayLiteralExpressionExpressionOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoByteArrayLiteralExpressionExpressionOwner [

	<generated>
	<container>

	<MSEProperty: #pharoByteArrayLiteralExpressionExpressionOwner type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoByteArrayLiteralExpressionExpressionOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoByteArrayLiteralExpressionExpressionOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoByteArrayLiteralExpressionExpressionOwner put: (FMMultivalueLink on: self update: #contents from: self pharoByteArrayLiteralExpressionExpressionOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageArgumentOwner [

	<generated>
	<MSEComment: 'The message which own this argument'>
	<container>

	<MSEProperty: #pharoMessageArgumentOwner type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoMessageArgumentOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageArgumentOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoMessageArgumentOwner put: (FMMultivalueLink on: self update: #arguments from: self pharoMessageArgumentOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageReceiver [

	<generated>
	<MSEComment: 'The receiver of the pharo message'>
	<container>

	<MSEProperty: #pharoMessageReceiver type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoMessageReceiver ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoMessageReceiver: anObject [

	<generated>
	(self privateState attributeAt: #pharoMessageReceiver ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #pharoMessageReceiver put: anObject.
	anObject receiver: self
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoParentAssignmentExpression [

	<generated>
	<container>

	<MSEProperty: #pharoParentAssignmentExpression type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoParentAssignmentExpression ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTExpression >> pharoParentAssignmentExpression: anObject [

	<generated>
	(self privateState attributeAt: #pharoParentAssignmentExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #pharoParentAssignmentExpression put: anObject.
	anObject expression: self
]
