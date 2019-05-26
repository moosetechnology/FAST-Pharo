"
A visitor used to import FAST model

should create Trait FASTImporterVisitor to factorize some of the methods
"
Class {
	#name : #FASTSmalltalkImporterVisitor,
	#superclass : #RBProgramNodeVisitor,
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

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> accept: anObject [
	^ anObject acceptVisitor: self
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> addToModel: anEntity [
	self model silentlyAdd: anEntity.
	^ anEntity
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> clone [
	^ self class new
			model: self model ;
			parentFASTVisitor: self ; 
			yourself.
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> create: class [
	^ self addToModel: class new.
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> create: class from: aNodeEntity [
	| newEntity |
	newEntity := self create: class.
	self parentFASTVisitor ifNotNil: [  ] ifNil: [ newEntity source: aNodeEntity sourceCode ].
	newEntity startPos: aNodeEntity start.
	newEntity endPos: aNodeEntity stop.
	^ newEntity
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> create: class fromFASTNode: aFASTNode [
	| newEntity |
	newEntity := self create: class.
	newEntity startPos: aFASTNode startPos.
	newEntity endPos: aFASTNode endPos.
	^ newEntity
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> createLiteral: aFASTLiteral from: aNode withValue: aValue [
	^ (self create: aFASTLiteral from: aNode)
		value: aValue;
		yourself
]

{ #category : #'entity-creation' }
FASTSmalltalkImporterVisitor >> createVariable: aVariableNode [ 
 	^ (self create: FASTVariableExpression from: aVariableNode)
		name: aVariableNode name;
		yourself

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
			stmt := self create: FASTExpressionStatement fromFASTNode: aFASTNode.
			stmt expression: aFASTNode.
			^ stmt
		]
		ifTrue: [ ^ aFASTNode ]
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

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> runWithSource: sourceAsString [
	| parseTree |
	self model: MooseModel new.
	self model metamodel: FASTPharoMetamodelGenerator resetMetamodel.

	parseTree := self parseTreeForSource: sourceAsString. 
	parseTree ifNotNil: [self visitMethodNode: parseTree].

	^ currentFASTEntity.
 
]

{ #category : #parsing }
FASTSmalltalkImporterVisitor >> runWithSource: sourceAsString and: aFamixMethod [
	| parseTree |
	currentFASTEntity := FASTPharoMethodEntity new
									name: aFamixMethod name ;
									yourself.

	self addToModel: currentFASTEntity.

	famixInvocationsPool := OrderedCollection withAll: aFamixMethod outgoingInvocations.
	
	parseTree := self parseTreeForSource: sourceAsString. 
	parseTree ifNotNil: [self visitMethodNode: parseTree].

	^ currentFASTEntity.
 
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitArrayNode: anArrayNode [

	currentFASTEntity := self create: FASTPharoArrayExpression from: anArrayNode.

	anArrayNode children do: [:each |
		currentFASTEntity addContents: (self clone visitNode: each).
	].
	^ currentFASTEntity 
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitAssignmentNode: anAssignmentNode [ 
	| assignt |
	currentFASTEntity := self create: FASTPharoAssignmentExpression from: anAssignmentNode.
	
	currentFASTEntity variable: (self clone visitNode: anAssignmentNode variable).

	currentFASTEntity expression: (self clone visitNode: anAssignmentNode value).

  	^ currentFASTEntity
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitBlockNode: aBlockNode [
	"a Pharo block will generate a FASTPharoBlockExpression containing a FASTPharoBlockDefinition
	because blocks are expressions and behavioural entities"

	| blockExpression |
	blockExpression :=  self create: FASTPharoBlockExpression from: aBlockNode.
	currentFASTEntity := self create: FASTPharoBlockDefinition from: aBlockNode.
	currentFASTEntity blockExpression: blockExpression.
	aBlockNode arguments
		ifNotNil: [ :parameters | 
			parameters
				do: [ :param | 
					| fastParam |
					fastParam := self createVariable: param.
					currentFASTEntity parameters add: fastParam.
					"uses the method's poolOfLocalVariables"
					"self putVarInScope: fastParam" ] ].
	self clone visitNode: aBlockNode body.
	^ blockExpression
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitBooleanLiteralNode: literalNode [
	^ self createLiteral: FASTBooleanLiteral from: literalNode withValue: literalNode value

]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitCascadeNode: aCascadeNode [ 
 
	currentFASTEntity := (self create: FASTPharoCascade from: aCascadeNode).
	aCascadeNode messages do: [ :each | currentFASTEntity messages add: (self clone visitNode: each) ].
	
  	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitCharacterLiteralNode: literalNode [
	^ self createLiteral: FASTCharacterLiteral from: literalNode withValue: literalNode value

]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitLiteralArrayNode: aLiteralArrayNode [
	currentFASTEntity := self create: (aLiteralArrayNode isForByteArray
									ifTrue: [ FASTPharoByteArrayLiteral ]
									ifFalse: [ FASTPharoArrayLiteral ]) from: aLiteralArrayNode.
	
	aLiteralArrayNode contents do: [ :each | currentFASTEntity addContents: (self clone visitNode: each) ].

	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitLiteralNode: literalNode [
	literalNode value isNumber
		ifTrue: [ ^ self visitNumberLiteralNode: literalNode ].
	literalNode value isCharacter
		ifTrue: [ ^ self visitCharacterLiteralNode: literalNode ].
	literalNode value isSymbol
		ifTrue: [ ^ self visitSymbolLiteralNode: literalNode ].
	literalNode value isString
		ifTrue: [ ^ self visitStringLiteralNode: literalNode ].
	literalNode value ifNil: [ ^ self visitUndefinedLiteralNode: literalNode ].	"there is not test method for booleans !!! Luckily that's the only one
	 (literalNode value isKindOf: Boolean)"
	^ self visitBooleanLiteralNode: literalNode
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitMessageNode: aMessageNode [ 	 

	currentFASTEntity := self create: FASTPharoMessageSend from: aMessageNode.
	
	currentFASTEntity kind: (
		aMessageNode isUnary
			ifTrue: [ #unary ]
			ifFalse: [
				aMessageNode isBinary
					ifTrue: [ #binary ]
					ifFalse: [ #keyword ] ]).
	
 	currentFASTEntity selector: 
		(self visitPharoSelector: aMessageNode).

	currentFASTEntity receiver: (self clone visitNode: aMessageNode receiver).

 	aMessageNode arguments do: [:each | currentFASTEntity addArguments: (self clone visitNode: each) ].
	
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
	currentFASTEntity := (self create: FASTPharoMethodEntity from: aMethodNode)
		name: aMethodNode selector;
		yourself.
	aMethodNode arguments do: [ :argument | currentFASTEntity parameters add: (self clone accept: argument) ].

	currentFASTEntity statementBlock: (self clone visitNode: aMethodNode body).

	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitNumberLiteralNode: literalNode [
	^ self createLiteral: FASTPharoNumberLiteral from: literalNode withValue: literalNode value

]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitPharoSelector: aMessageNode [
	^ (self create: FASTPharoSelector)
		name: aMessageNode selector;
		yourself
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitReturnNode: aReturnNode [

	currentFASTEntity := self create: FASTReturnStatement from: aReturnNode.
	currentFASTEntity expression: (self clone visitNode: aReturnNode value).
	^ currentFASTEntity
	
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitSelfNode: aSelfNode [
	^ self visitVariableNode: aSelfNode
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitSequenceNode: aSequenceNode [
	
	aSequenceNode temporaries
		do: [ :aVariableNode | 
			| fastLocal |
			fastLocal := self createVariable: aVariableNode.
			self parentFASTEntity addLocalVariables: fastLocal.
	].

	aSequenceNode statements do: [ :each |
		self parentFASTEntity addStatements: ( self ensureStatement: (self clone visitNode: each) ).
	].
	^ currentFASTEntity
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitStringLiteralNode: literalNode [
	^ self createLiteral: FASTStringLiteral from: literalNode withValue: literalNode value
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitSymbolLiteralNode: literalNode [
	^ self createLiteral: FASTPharoSymbolLiteral from: literalNode withValue: literalNode value
]

{ #category : #'visitor-literal double dispatching' }
FASTSmalltalkImporterVisitor >> visitUndefinedLiteralNode: literalNode [
	^ self createLiteral: FASTNullPointerLiteral from: literalNode withValue: literalNode value
]

{ #category : #'visitor-double dispatching' }
FASTSmalltalkImporterVisitor >> visitVariableNode: aVariableNode [ 

 	currentFASTEntity := self create: FASTVariableExpression from: aVariableNode.
 	currentFASTEntity name: aVariableNode name.

 	^ currentFASTEntity
]
