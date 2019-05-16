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
		'variableEntity'
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
	arrayLiteral := builder newClassNamed: #ArrayLiteral.
	blockDefinition := builder newClassNamed: #BlockDefinition.
	byteArrayLiteral := builder newClassNamed: #ByteArrayLiteral.
	pharoExpression := builder newClassNamed: #Expression.
	arrayExpression := builder newClassNamed: #ArrayExpression.
	assignmentExpression := builder newClassNamed: #AssignmentExpression.
	blockExpression := builder newClassNamed: #BlockExpression.
	cascade := builder newClassNamed: #Cascade.
	messageSend := builder newClassNamed: #MessageSend.
	methodEntity := builder newClassNamed: #MethodEntity.
	numberLiteral := builder newClassNamed: #NumberLiteral.
	selector := builder newClassNamed: #Selector.
	symbolLiteral := builder newClassNamed: #SymbolLiteral.
	
	literal := self remoteEntity: #Literal withPrefix: #FAST.
	behaviouralEntity := self remoteEntity: #BehaviouralEntity withPrefix: #FAST.
	expression := self remoteEntity: #Expression withPrefix: #FAST.
	namedBehaviouralEntity := self remoteEntity: #NamedBehaviouralEntity withPrefix: #FAST.
	entity := self remoteEntity: #Entity withPrefix: #FAST.
	variableEntity := self remoteEntity: #VariableEntity withPrefix: #FAST.
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
	numberLiteral --|> literal.
	selector --|> entity.
	symbolLiteral --|> literal
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineProperties [
	super defineProperties.
	(messageSend property: #kind type: #String) comment: 'Tag indicating a unary, binary or keyword method'.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineRelations [
	super defineRelations.
	(((selector property: #parentMessageSend) comment: 'An expression referencing this selector') -<> ((messageSend property: #selector) comment: 'Selector of the message')) withoutPrimaryContainer.
	
	(((messageSend property: #inCascade) comment: 'Optional cascade including this message') -<> ((cascade property: #messages) comment: 'Messages of cascade')) withoutPrimaryContainer.
	(((messageSend property: #receiver) comment: 'Receiver of the message') -<> ((expression property: #messageReceived) comment: 'If used as a message receiver, this is the message')) withoutPrimaryContainer.
	
	(((blockExpression property: #block) comment: 'Behavioural entity that represents the block') -<> ((blockDefinition property: #blockExpression) comment: 'Expression entity that represents the block')) withoutPrimaryContainer.
	
	(((assignmentExpression property: #variable) comment: 'An assigned variable (lhs of assignement)') <>- ((variableEntity property: #parentAssignmentExpression) comment: 'Assignement in which this variable is lhs')) withoutPrimaryContainer.
	
]
