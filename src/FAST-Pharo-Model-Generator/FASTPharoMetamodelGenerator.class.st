"
TODO

- FASTPharoMethodEntity

DONE

- FASTPharoSelector
- FASTPharoSymbolLiteral
- FASTPharoNumberLiteral
- FASTPharoMessageSend
"
Class {
	#name : #FASTPharoMetamodelGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'arrayLiteral',
		'blockDefinition',
		'byteArrayLiteral',
		'expression',
		'arrayExpression',
		'assignmentExpression',
		'blockExpression',
		'cascade',
		'messageSend',
		'methodEntity',
		'numberLiteral',
		'selector',
		'symbolLiteral',
		'literal',
		'behaviouralEntity',
		'namedBehaviouralEntity',
		'pharoExpression',
		'variableEntity',
		'statement'
	],
	#category : #'FAST-Pharo-Model-Generator'
}

{ #category : #accessing }
FASTPharoMetamodelGenerator class >> modifyMetamodel: aMetamodel [

	super modifyMetamodel: aMetamodel.
	
	self fixRemoteMetamodelRelationsIn: aMetamodel.
]

{ #category : #accessing }
FASTPharoMetamodelGenerator class >> packageName [

	<ignoreForCoverage>
	^ #'Fast-Pharo-Model'
]

{ #category : #accessing }
FASTPharoMetamodelGenerator class >> prefix [

	<ignoreForCoverage>
	^ #'FastPharo'
]

{ #category : #accessing }
FASTPharoMetamodelGenerator class >> submetamodels [
	^ { FASTMetamodelGenerator }
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineClasses [
	super defineClasses.
	arrayExpression := builder newClassNamed: #ArrayExpression.
	arrayLiteral := builder newClassNamed: #ArrayLiteral.
	assignmentExpression := builder newClassNamed: #AssignmentExpression.
	blockDefinition := builder newClassNamed: #BlockDefinition.
	blockExpression := builder newClassNamed: #BlockExpression.
	byteArrayLiteral := builder newClassNamed: #ByteArrayLiteral.
	cascade := builder newClassNamed: #Cascade.
	pharoExpression := builder newClassNamed: #Expression.
	messageSend := builder newClassNamed: #MessageSend.
	methodEntity := builder newClassNamed: #MethodEntity.
	numberLiteral := builder newClassNamed: #NumberLiteral.
	selector := builder newClassNamed: #Selector.
	symbolLiteral := builder newClassNamed: #SymbolLiteral.
	
	literal := self remoteEntity: #Literal withPrefix: #FAST.
	variableEntity := self remoteEntity: #VariableEntity withPrefix: #FAST.
	behaviouralEntity := self remoteEntity: #BehaviouralEntity withPrefix: #FAST.
	expression := self remoteEntity: #Expression withPrefix: #FAST.
	namedBehaviouralEntity := self remoteEntity: #NamedBehaviouralEntity withPrefix: #FAST.
	entity := self remoteEntity: #Entity withPrefix: #FAST.
	statement := self remoteEntity: #Statement withPrefix: #FAST
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
	arrayLiteral --|> literal.
	blockDefinition --|> behaviouralEntity.
	byteArrayLiteral --|> literal.
	pharoExpression --|> expression.
	arrayExpression --|> pharoExpression.
	assignmentExpression --|> pharoExpression.
	blockExpression --|> pharoExpression.
	cascade --|> pharoExpression.
	messageSend --|> expression.
	methodEntity --|> namedBehaviouralEntity.
	methodEntity --|> #TWithImmediateSource.
	numberLiteral --|> literal.
	selector --|> entity.
	selector --|> #TNamed.
	symbolLiteral --|> literal.
	
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineProperties [
	super defineProperties.
	(messageSend property: #kind type: #String) comment: 'The kind of message'.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineRelations [
	super defineRelations.
	 
	(((messageSend property: #selector) comment: 'The sent selector') <>- ((selector property: #parentMessageSend) comment: 'The sended of this selector')) withoutPrimaryContainer.
	(((messageSend property: #receiver) comment: 'The receiver of the selector') <>- ((expression property: #pharoMessageReceiver) comment: 'The receiver of the pharo message')) withoutPrimaryContainer.
	(((messageSend property: #inCascade) comment: 'Optional cascade including this message') *-<> ((cascade property: #messages) comment: 'The messages of the cascade')) withoutPrimaryContainer.	
	
	(((messageSend property: #arguments) comment: 'The arguments of the message') <>-* ((expression property: #pharoMessageArgumentOwner) comment: 'The message which own this argument')) withoutPrimaryContainer.	
	
	(((blockExpression property: #block) comment: 'Behavioural entity that represents the block') <>- ((blockDefinition property: #blockExpression) comment: 'Expression entity that represents the block')) withoutPrimaryContainer.
	
	(((assignmentExpression property: #variable) comment: 'An assigned variable (lhs of assignement)') <>- ((variableEntity property: #pharoParentAssignmentExpression) comment: '')) withoutPrimaryContainer.
	(((assignmentExpression property: #expression) comment: 'Assigned expression (rhs of assignement)') <>- ((expression property: #pharoParentAssignmentExpression) comment: '')) withoutPrimaryContainer.	
	
	(((methodEntity property: #statements) comment: 'The statements of the methid') <>-* ((statement property: #pharoMethodStatementOwner) comment: '')) withoutPrimaryContainer.	
	
	(((blockDefinition property: #statements) comment: 'The statements of the methid') <>-* ((statement property: #pharoBlockStatementOwner) comment: '')) withoutPrimaryContainer.	
	
]
