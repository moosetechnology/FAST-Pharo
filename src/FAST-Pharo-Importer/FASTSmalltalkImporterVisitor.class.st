"
A visitor used to import FAST model

should create Trait FASTImporterVisitor to factorize some of the methods
"
Class {
	#name : #FASTSmalltalkImporterVisitor,
	#superclass : #RBProgramNodeVisitor,
	#traits : 'TFASTImporterVisitor',
	#classTraits : 'TFASTImporterVisitor classTrait',
	#instVars : [
		'model',
		'parentFASTVisitor',
		'currentFASTEntity',
		'currentFASTScope',
		'famixPoolOfVariable',
		'famixInvocationsPool'
	],
	#category : #'FAST-Pharo-Importer'
}

{ #category : #'as yet unclassified' }
FASTSmalltalkImporterVisitor class >> newWithModel: aModel [
	^ self new initializeWithModel: aModel
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> addToModel: anEntity [
	self model silentlyAdd: anEntity.
	^ anEntity
]

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> clone [
	^ self class new
			model: self model ;
			currentFASTScope: self currentFASTScope ;
			famixInvocationsPool: self famixInvocationsPool ;
			famixPoolOfVariable: self famixPoolOfVariable ;
			parentFASTVisitor: self ; 
			yourself.
			
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> createExpression: aFASTExp [
	currentFASTEntity := self addToModel: aFASTExp.
	"currentFASTEntity parentNode: self parentFASTEntity."
	^ currentFASTEntity
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> createLiteral: aFASTLiteral withValue: aValue [

	self createExpression: aFASTLiteral.
	currentFASTEntity value: aValue.

	^ currentFASTEntity
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> createVariable: aVariableNode [ 
 	| fastVar |
	fastVar := self addToModel: FASTVariableEntity new.
	fastVar variableName: aVariableNode name.
	^ fastVar

]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> currentFASTEntity [
	
	^ currentFASTEntity
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> currentFASTEntity: anObject [
	
	currentFASTEntity := anObject
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> currentFASTScope [
	
	^ currentFASTScope
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> currentFASTScope: anObject [
	
	currentFASTScope := anObject
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> ensureStatement: aFASTNode [
  	"Wraps top-level expressions into statements"
	| stmt |
	aFASTNode isFASTStatement
		ifFalse: [
			stmt :=  FASTExpressionStatement new.
			stmt expression: aFASTNode.
			aFASTNode parentStatement: stmt.
			self addToModel: stmt.
			^ stmt
		]
		ifTrue: [ ^ aFASTNode ]
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> famixInvocationsPool [
	
	^ famixInvocationsPool
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> famixInvocationsPool: anObject [
	
	famixInvocationsPool := anObject
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> famixPoolOfVariable [
	
	^ famixPoolOfVariable
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> famixPoolOfVariable: anObject [
	
	famixPoolOfVariable := anObject
]

{ #category : #'initialize-release' }
FASTSmalltalkImporterVisitor >> initializeWithModel: aModel [
	self initialize.
	model := aModel
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> model [
	"return a model that should be used for storing elements"
	^ model
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> model: anObject [
	
	model := anObject
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> parentFASTEntity [
	
	^ parentFASTVisitor currentFASTEntity
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> parentFASTVisitor [
	
	^ parentFASTVisitor
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> parentFASTVisitor: anObject [
	
	parentFASTVisitor := anObject
]

{ #category : #accessing }
FASTSmalltalkImporterVisitor >> parentScope [
	
	^ parentFASTVisitor currentFASTScope
]

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> parseTreeForSource: methodSourceString [
	^ self parser parseMethod: methodSourceString
		onError: [:aString :pos | ^nil]
]

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> parser [
	"ruturn a parser that should be used to parse source into tree"
	^ PPSmalltalkParser
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> putVarInScope: fastVar [
	"if the FASTVariable is found in the pool of famix variables:
	 - put it in the scope's dictionnary
	 - link it to the FAST variable
	 - and remove it from the pool"
	^ famixPoolOfVariable
			detect: [ :v | v name = fastVar variableName ]
			ifOne: [ :famixVar | 
				currentFASTScope add: famixVar.
				fastVar famixNamedEntity: famixVar.
				famixPoolOfVariable remove: famixVar ]
			ifNone: [ nil ]	
]

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> runWithSource: sourceAsString and: aFamixMethod [
	| parseTree |
	currentFASTEntity := FASTPharoMethodEntity new
									name: aFamixMethod name ;
									"famixNamedEntity: aFamixMethod ;"
									yourself.
	"aFamixMethod fastBehaviouralEntity: currentFASTEntity."

	self addToModel: currentFASTEntity.

	famixInvocationsPool := OrderedCollection withAll: aFamixMethod outgoingInvocations.
	
	parseTree := self parseTreeForSource: sourceAsString. 
	parseTree ifNotNil: [self visitMethodNode: parseTree].

	^ currentFASTEntity.
 
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitArrayNode: anArrayNode [

	self createExpression: FASTPharoArrayExpression new.

	anArrayNode children do: [:each |
		currentFASTEntity addChildExpression: (self clone visitNode: each).
	].
	^ currentFASTEntity 
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitAssignmentNode: anAssignmentNode [ 
	| assignt |
	self createExpression: FASTPharoAssignmentExpression new.
	
	currentFASTEntity variable: (self clone visitNode: anAssignmentNode variable).

	currentFASTEntity expression: (self clone visitNode: anAssignmentNode value).
	currentFASTEntity expression parentExpression: currentFASTEntity.

  	^ currentFASTEntity
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitBlockNode: aBlockNode [
	"a Pharo block will generate a FASTPharoBlockExpression containing a FASTPharoBlockDefinition
	because blocks are expressions and behavioural entities"

	| blockExpression |
	blockExpression := self addToModel: FASTPharoBlockExpression new.
	currentFASTEntity := self addToModel: FASTPharoBlockDefinition new.
	currentFASTEntity blockExpression: blockExpression.
	blockExpression block: currentFASTEntity.
	currentFASTScope := FASTScope
		newWithOwner: currentFASTEntity
		andParents: {self parentScope}.
	currentFASTEntity fastScope: currentFASTScope.
	aBlockNode arguments
		ifNotNil: [ :parameters | 
			parameters
				do: [ :param | 
					| fastParam |
					fastParam := self createVariable: param.
					currentFASTEntity parameters add: fastParam.
					"uses the method's poolOfLocalVariables"
					self putVarInScope: fastParam ] ].
	self clone visitNode: aBlockNode body.
	^ blockExpression
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitBooleanLiteralNode: literalNode [
	^ self createLiteral: FASTBooleanLiteral new withValue: literalNode value

]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitCascadeNode: aCascadeNode [ 
 
	currentFASTEntity := (self addToModel: FASTPharoCascade new).
	aCascadeNode messages do: [ :each | currentFASTEntity messages add: (self clone visitNode: each) ].
	
  	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitCharacterLiteralNode: literalNode [
	^ self createLiteral: FASTCharacterLiteral new withValue: literalNode value

]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitLiteralArrayNode: aLiteralArrayNode [
	self createExpression: (aLiteralArrayNode isForByteArray
									ifTrue: [ FASTPharoByteArrayLiteral ]
									ifFalse: [ FASTPharoArrayLiteral ]) new.
	
	aLiteralArrayNode contents do: [ :each | currentFASTEntity addChildExpression: (self clone visitNode: each) ].

	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitLiteralNode: literalNode [
	literalNode value isNumber
		ifTrue: [ ^ self visitNumberLiteralNode: literalNode ].
	literalNode value isCharacter
		ifTrue: [ ^ self visitCharacterLiteralNode: literalNode ].
	literalNode value isSymbol
		ifTrue: [ ^ self vsitSymbolLiteralNode: literalNode ].
	literalNode value isString
		ifTrue: [ ^ self visitStringLiteralNode: literalNode ].
	literalNode value ifNil: [ ^ self visitUndefinedLiteralNode: literalNode ].	"there is not test method for booleans !!! Luckily that's the only one
	 (literalNode value isKindOf: Boolean)"
	^ self visitBooleanLiteralNode: literalNode
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitMessageNode: aMessageNode [ 	 

	currentFASTEntity := self addToModel: FASTPharoMessageSend new.
	"self parentFASTEntity childExpression: currentFASTEntity."

	currentFASTEntity kind: (
		aMessageNode isUnary
			ifTrue: [ #unary ]
			ifFalse: [
				aMessageNode isBinary
					ifTrue: [ #binary ]
					ifFalse: [ #keyword ] ]).
	
 	currentFASTEntity selector:
		(self addToModel: (FASTPharoSelector new
									name: aMessageNode selector ;
									parentMessageSend: currentFASTEntity ;
									yourself )).
	
	self flag: 'should look for the right invocation to the right selector'.
	currentFASTEntity invocation: famixInvocationsPool first.
	currentFASTEntity invocation messageSend: currentFASTEntity.
	famixInvocationsPool remove: currentFASTEntity invocation.

	currentFASTEntity receiver: (self clone visitNode: aMessageNode receiver).
	"remove receiver from childrenExpressions (possibly set when visiting the receiver)"
	currentFASTEntity childrenExpressions remove: currentFASTEntity receiver ifAbsent: [].
	currentFASTEntity receiver messageReceived: currentFASTEntity.

 	aMessageNode arguments do: [:each | currentFASTEntity addArgument: (self clone visitNode: each) ].
	
	^ currentFASTEntity

]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitMethodArguments: methodArguments [
	methodArguments
		ifNotNil: [ :parameters | 
			famixPoolOfVariable := OrderedCollection
				withAll: currentFASTEntity parentNode parameters.
			parameters
				do: [ :param | 
					| fastParam |
					fastParam := self createVariable: param.
					currentFASTEntity parameters add: fastParam.
					self putVarInScope: fastParam ].
			"Note: famixPoolOfVariable should be empty here"
			self assert: [ famixPoolOfVariable isEmpty ] ]
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitMethodNode: aMethodNode [
	| theFastMethod |
	theFastMethod := currentFASTEntity.

	currentFASTScope := FASTScope
		newWithOwner: currentFASTEntity
		andParents:
			(OrderedCollection
				with: currentFASTEntity parentNode belongsTo fastScope).
	currentFASTEntity fastScope: currentFASTScope.

	self visitMethodArguments: aMethodNode arguments.

	famixInvocationsPool := OrderedCollection
		withAll: currentFASTEntity parentNode outgoingInvocations.
	famixPoolOfVariable := OrderedCollection
		withAll: currentFASTEntity parentNode localVariables.
	currentFASTEntity := theFastMethod statementBlock.

	self clone visitNode: aMethodNode body.

	"Note: famixPools should be empty here"
	self assert: [ famixInvocationsPool isEmpty ].
	self assert: [ famixPoolOfVariable isEmpty ].

	^ theFastMethod
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitNumberLiteralNode: literalNode [
	^ self createLiteral: FASTPharoNumberLiteral new withValue: literalNode value

]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitReturnNode: aReturnNode [

	currentFASTEntity := self addToModel: FASTReturnStatement new.
	self parentFASTEntity addStatement: currentFASTEntity.
	currentFASTEntity returnedExpression: (self clone visitNode: aReturnNode value).
	currentFASTEntity returnedExpression parentStatement: currentFASTEntity.
	^ currentFASTEntity
	
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitSelfNode: aSelfNode [
	^ self visitVariableNode: aSelfNode
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitSequenceNode: aSequenceNode [
	"visit a sequence of statement in a method or a block"
	currentFASTEntity := self parentFASTEntity.
	currentFASTScope := self parentScope.

	aSequenceNode temporaries
		do: [ :aVariableNode | 
			| fastLocal |
			fastLocal := self createVariable: aVariableNode.
			currentFASTEntity addLocalEntity: fastLocal.
			self putVarInScope: fastLocal
	].

	aSequenceNode statements do: [ :each |
		currentFASTEntity addStatement: ( self ensureStatement: (self clone visitNode: each) ).
	].

	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitStringLiteralNode: literalNode [
	| literal |
	literal := self addToModel: FASTStringLiteral new.
	^ literal
		value: literalNode value ;
		yourself
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitUndefinedLiteralNode: literalNode [
	^ self createLiteral: FASTNullPointerLiteral new withValue: literalNode value
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitVariableNode: aVariableNode [ 

 	currentFASTEntity := self addToModel: FASTVariableExpression new.
	currentFASTEntity parentStatement: self parentFASTEntity. "should not do that here but in the parent visit method"
 	currentFASTEntity variableName: aVariableNode name.

 	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> vsitSymbolLiteralNode: literalNode [
	^ self createLiteral: FASTPharoSymbolLiteral new withValue: literalNode value
]
