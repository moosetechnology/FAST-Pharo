Class {
	#name : #FASTPharoMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'arrayExpression',
		'arrayLiteral',
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
		'tReturnStatement',
		'tExpressionStatement',
		'expressionStatement',
		'tWithParameters',
		'tAssignment',
		'assignment',
		'tVariableEntity',
		'statementBlock',
		'tStatementBlock'
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
	expressionStatement := builder newClassNamed: #ExpressionStatement.
	assignment := builder newClassNamed: #Assignment.
	variableEntity := builder newClassNamed: #VariableEntity.
	statementBlock := builder newClassNamed: #StatementBlock.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
	blockDefinition --|> tBehaviouralEntity.
	
	arrayLiteral --|> tLiteral.
	arrayLiteral --|> expression.
	byteArrayLiteral --|> tLiteral.
	byteArrayLiteral --|> expression.
	symbolLiteral --|> tLiteral.
	symbolLiteral --|> expression.
	numberLiteral --|> tNumericalLiteral.
	numberLiteral --|> expression.
	nilLiteral --|> tNullPointerLiteral.
	nilLiteral --|> expression.
	stringLiteral --|> tStringLiteral.
	stringLiteral --|> expression.
	characterLiteral --|> tCharaterLiteral.
	characterLiteral --|> expression.
	booleanLiteral --|> tBooleanLiteral.
	booleanLiteral --|> expression.
	expression --|> tExpression.
	arrayExpression --|> expression.
	assignment --|> tAssignment.
	blockExpression --|> expression.
	cascade --|> expression.
	messageSend --|> tInvocation.
	messageSend --|> expression.
	methodEntity --|> tNamedBehaviouralEntity.
	methodEntity --|> #THasImmediateSource.
	selector --|> tNamedEntity.
	variableExpression --|> tVariableExpression.
	variableExpression --|> expression.
	returnStatement --|> tReturnStatement.
	expressionStatement --|> tExpressionStatement.
	variableEntity --|> tVariableEntity.
	statementBlock --|> tStatementBlock.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineProperties [
	super defineProperties.
	(messageSend property: #kind type: #String) comment: 'The kind of message'.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineRelations [
	super defineRelations.
	
	(((messageSend property: #receiver) comment: 'The receiver of the selector') <>- ((expression property: #pharoMessageReceiver) comment: 'The receiver of the pharo message')) .
	(((messageSend property: #inCascade) comment: 'Optional cascade including this message') *-<> ((cascade property: #messages) comment: 'The messages of the cascade')) .	
	 
	(((blockExpression property: #block) comment: 'Behavioural entity that represents the block') <>- ((blockDefinition property: #blockExpression) comment: 'Expression entity that represents the block')) .	
	self flag: #TODO , 'Remonter localVariable dans FASTCore'.
	(((methodEntity property: #localVariables) comment: 'The local variables of the method') <>-* ((variableExpression property: #pharoMethodVariableEntityOwner) comment: '')) .	
	
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
	tExpressionStatement := self remoteTrait: #TExpressionStatement withPrefix: #FAST.
	tWithParameters := self remoteTrait: #TWithParameters withPrefix: #FAST.
	tAssignment := self remoteTrait: #TAssignment withPrefix: #FAST.
	tVariableEntity := self remoteTrait: #TVariableEntity withPrefix: #FAST.
	tStatementBlock := self remoteTrait: #TStatementBlock withPrefix: #FAST.
]
