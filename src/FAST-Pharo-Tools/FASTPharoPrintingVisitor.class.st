Class {
	#name : #FASTPharoPrintingVisitor,
	#superclass : #FASTPharoVisitor,
	#instVars : [
		'stream',
		'indentation'
	],
	#category : #'FAST-Pharo-Tools'
}

{ #category : #printing }
FASTPharoPrintingVisitor class >> print: aMethod [
	^ self new print: aMethod
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> indent [
	indentation := indentation + 1
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> initialize [
	super initialize.
	indentation:= 0
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> outdent [
	indentation > 0 ifTrue: [ indentation := indentation - 1 ]
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> print: aMethod [
	stream := WriteStream on: String new.
	self visitNode: aMethod.
	^ stream contents
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> printMessage: selector withParameters: collection [
	collection isEmpty
		ifTrue:  [stream nextPutAll: selector name ]
		ifFalse: [
			collection size = 1
				ifTrue:  [
					stream nextPutAll: selector name; space.
					self visitNode: collection first]
				ifFalse: [
					"all but last becasue split adds '' after last $: "
					($: split: selector name) allButLast doWithIndex: [:message :index |
						stream
							nextPutAll: message ;
							nextPut: $: ;
							space.
						self visitNode: (collection at: index).
						index = collection size ifFalse: [stream space]]]]
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> printTemporaries: temporaries [
	stream crtab: indentation; nextPut: $|; space.
	temporaries do: [:var |
		self visitNode: var.
		stream space].
	stream nextPut: $|.
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitArrayLiteral: aLiteralNode [
	self visitFASTLiteral: aLiteralNode
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTExpressionStatement: anExpressionStatement [
	^ self visitFASTStatement: anExpressionStatement

]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTLiteral: aLiteralNode [
	stream nextPutAll: aLiteralNode value asString
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTNamedBehaviouralEntity: aNamedBehaviouralEntityNode [
	self
		printMessage: aNamedBehaviouralEntityNode
		withParameters: aNamedBehaviouralEntityNode parameters.
	self indent.
	aNamedBehaviouralEntityNode localVariables isEmpty ifFalse:
		[self printTemporaries: aNamedBehaviouralEntityNode localVariables].
	aNamedBehaviouralEntityNode statements do: [:each | self visitNode: each].
	stream skip: -1.
	self outdent
	
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTReturnStatement: aReturnStatement [
	stream
		crtab: indentation ;
		nextPut: $^ ;
		space.
	self visitNode: aReturnStatement expression.
	stream nextPut: $.
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTStatement: aStatementNode. [
	stream crtab: indentation.
	self visitNode: aStatementNode expression.
	stream nextPut: $.
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTVariableEntity: aVariableEntity [
	stream nextPutAll: aVariableEntity name
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitFASTVariableExpression: aVariableExpressionNode [
	stream nextPutAll: aVariableExpressionNode name
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoArrayExpressionNode: anArrayNode [
	stream nextPut: ${.
	1 to: anArrayNode contents size - 1 do: [ :i |
		self visitNode: (anArrayNode contents at: i).
		stream
			space ;
			nextPut: $. ;
			space
	].
	self visitNode: anArrayNode contents last.
	stream nextPut: $}
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoAssignmentExpression: anAssignmentNode [
	self visitNode: anAssignmentNode variable.
	stream space; nextPutAll: ':='; space.
	self visitNode: anAssignmentNode expression
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoBlockDefinition: aBlockDefinition [
	stream nextPut: $[.
	aBlockDefinition parameters ifNotEmpty: [
		aBlockDefinition parameters do: [ :each |
			stream space; nextPut: $:.
			self visitNode: each].
		stream space; nextPut: $|].
	self indent.

	aBlockDefinition localVariables ifNotEmpty:
		[self printTemporaries: aBlockDefinition localVariables].
	aBlockDefinition statements do: [:each | self visitNode: each].
	stream skip: -1.
	stream space.
	self outdent.
	stream nextPut: $].
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoBlockExpression: aBlockExpression [
	^ aBlockExpression block accept: self
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoCascade: aCascadeNode [
	self visitNode: aCascadeNode receiver.
	stream space.
	self visitNode: aCascadeNode messages first.
	aCascadeNode messages asArray allButFirst do: [:each |
		stream nextPut: $;; space.
		self visitNode: each]
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoMessageSend: aMessageSend [
	aMessageSend isCascaded ifFalse: [
		self visitNode: aMessageSend receiver].
	stream space.
	self
		printMessage: aMessageSend selector
		withParameters: aMessageSend arguments
]

{ #category : #accessing }
FASTPharoPrintingVisitor >> visitPharoMethodEntity: aBehaviouralEntity [
	self visitFASTNamedBehaviouralEntity: aBehaviouralEntity
]
