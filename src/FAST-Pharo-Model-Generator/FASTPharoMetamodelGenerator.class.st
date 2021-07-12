Class {
	#name : #FASTPharoMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'arrayExpression',
		'arrayLiteral',
		'assignmentExpression',
		'blockDefinition',
		'blockExpression',
		'byteArrayLiteral',
		'cascade',
		'messageSend',
		'methodEntity',
		'numberLiteral',
		'selector',
		'symbolLiteral',
		'literal',
		'variableEntity',
		'variableExpression',
		'behaviouralEntity',
		'expression',
		'namedBehaviouralEntity',
		'entity',
		'statement',
		'tNamedEntity',
		'tLiteral',
		'tBehaviouralEntity',
		'tNumericalLiteral',
		'nilLiteral',
		'tNullPointerLiteral',
		'stringLiteral',
		'tStringLiteral',
		'characterLiteral',
		'tCharaterLiteral',
		'booleanLiteral',
		'tBooleanLiteral',
		'tExpression',
		'tInvocation',
		'tNamedBehaviouralEntity',
		'tEntity',
		'tVariableExpression',
		'returnStatement',
		'tReturnStatement'
	],
	#category : #'FAST-Pharo-Model-Generator'
}

{ #category : #accessing }
FASTPharoMetamodelGenerator class >> packageName [

	<ignoreForCoverage>
	^ #'FAST-Pharo-Model'
]

{ #category : #accessing }
FASTPharoMetamodelGenerator class >> prefix [

	<ignoreForCoverage>
	^ #'FASTPharo'
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
	byteArrayLiteral := builder newClassNamed: #ByteArrayLiteral.
	numberLiteral := builder newClassNamed: #NumberLiteral.
	symbolLiteral := builder newClassNamed: #SymbolLiteral.
	nilLiteral := builder newClassNamed: #NilLiteral.
	booleanLiteral := builder newClassNamed: #BooleanLiteral.
	characterLiteral := builder newClassNamed: #CharacterLiteral.
	stringLiteral := builder newClassNamed: #StringLiteral.
	assignmentExpression := builder newClassNamed: #AssignmentExpression.
	blockDefinition := builder newClassNamed: #BlockDefinition.
	blockExpression := builder newClassNamed: #BlockExpression.
	cascade := builder newClassNamed: #Cascade.
	expression := builder newClassNamed: #Expression.
	messageSend := builder newClassNamed: #MessageSend.
	methodEntity := builder newClassNamed: #MethodEntity.
	selector := builder newClassNamed: #Selector.
	namedBehaviouralEntity := builder newClassNamed: #NamedBehaviouralEntity.
	statement := builder newClassNamed: #Statement.
	variableExpression := builder newClassNamed: #VariableExpression.
	returnStatement := builder newClassNamed: #ReturnStatement.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
	arrayLiteral --|> tLiteral.
	blockDefinition --|> tBehaviouralEntity.
	byteArrayLiteral --|> tLiteral.
	symbolLiteral --|> tLiteral.
	numberLiteral --|> tNumericalLiteral.
	nilLiteral --|> tNullPointerLiteral.
	stringLiteral --|> tStringLiteral.
	characterLiteral --|> tCharaterLiteral.
	booleanLiteral --|> tBooleanLiteral.
	expression --|> tExpression.
	arrayExpression --|> expression.
	assignmentExpression --|> expression.
	blockExpression --|> expression.
	cascade --|> expression.
	messageSend --|> tInvocation.
	methodEntity --|> tNamedBehaviouralEntity.
	methodEntity --|> #THasImmediateSource.
	selector --|> tNamedEntity.
	variableExpression --|> tVariableExpression.
	returnStatement --|> tReturnStatement.
	
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineProperties [
	super defineProperties.
	(messageSend property: #kind type: #String) comment: 'The kind of message'.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineRelations [
	super defineRelations.
	 
	(((messageSend property: #selector) comment: 'The sent selector') <>- ((selector property: #parentMessageSend) comment: 'The sended of this selector')) .
	(((messageSend property: #receiver) comment: 'The receiver of the selector') <>- ((expression property: #pharoMessageReceiver) comment: 'The receiver of the pharo message')) .
	(((messageSend property: #inCascade) comment: 'Optional cascade including this message') *-<> ((cascade property: #messages) comment: 'The messages of the cascade')) .	
	
	(((messageSend property: #arguments) comment: 'The arguments of the message') <>-* ((expression property: #pharoMessageArgumentOwner) comment: 'The message which own this argument')) .	
	
	(((blockExpression property: #block) comment: 'Behavioural entity that represents the block') <>- ((blockDefinition property: #blockExpression) comment: 'Expression entity that represents the block')) .
	
	(((assignmentExpression property: #variable) comment: 'An assigned variable (lhs of assignement)') <>- ((variableExpression property: #pharoParentAssignmentExpression) comment: '')) .
	(((assignmentExpression property: #expression) comment: 'Assigned expression (rhs of assignement)') <>- ((expression property: #pharoParentAssignmentExpression) comment: '')) .	
	
	(((methodEntity property: #statements) comment: 'The statements of the method') <>-* ((statement property: #pharoMethodStatementOwner) comment: '')) .	
	(((methodEntity property: #localVariables) comment: 'The local variables of the method') <>-* ((variableExpression property: #pharoMethodVariableEntityOwner) comment: '')) .	
	
	
	(((blockDefinition property: #statements) comment: 'The statements of the method') <>-* ((statement property: #pharoBlockStatementOwner) comment: '')) .	
	(((blockDefinition property: #localVariables) comment: 'The local variables of the block') <>-* ((variableExpression property: #pharoBlockDefinitionVariableEntityOwner) comment: '')) .	


	(((arrayExpression property: #contents) comment: 'The expression in the array') <>-* ((expression property: #pharoArrayExpressionExpressionOwner) comment: '')) .	

	(((arrayLiteral property: #contents) comment: 'The expression in the array') <>-* ((expression property: #pharoArrayLiteralExpressionExpressionOwner) comment: '')) .	
	(((byteArrayLiteral property: #contents) comment: 'The expression in the array') <>-* ((expression property: #pharoByteArrayLiteralExpressionExpressionOwner) comment: '')) .	
	
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineTraits [
	super defineTraits.
	tLiteral := self remoteTrait: #TLiteral withPrefix: #FAST.
	tNumericalLiteral := self remoteTrait: #TNumericalLiteral withPrefix: #FAST.
	tNullPointerLiteral := self remoteTrait: #TNullPointerLiteral withPrefix: #FAST.
	tStringLiteral := self remoteTrait: #TStringLiteral withPrefix: #FAST.
	tCharaterLiteral := self remoteTrait: #TCharacterLiteral withPrefix: #FAST.
	tBooleanLiteral := self remoteTrait: #TBooleanLiteral withPrefix: #FAST.
	
	tExpression := self remoteTrait: #TExpression withPrefix: #FAST.
	tNamedEntity := self remoteTrait: #TNamedEntity withPrefix: #FAST.
	tBehaviouralEntity := self remoteTrait: #TBehaviouralEntity withPrefix: #FAST.
	tNamedBehaviouralEntity := self remoteTrait: #TNamedBehaviouralEntity withPrefix: #FAST.
	tInvocation := self remoteTrait: #TInvocation withPrefix: #FAST.
	tVariableExpression := self remoteTrait: #TVariableExpression withPrefix: #FAST.
	tReturnStatement := self remoteTrait: #TReturnStatement withPrefix: #FAST.
]
