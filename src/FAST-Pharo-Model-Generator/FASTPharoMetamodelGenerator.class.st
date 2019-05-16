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
		'pharoExpression'
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
	entity := self remoteEntity: #Entity withPrefix: #FAST
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
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineRelations [
	super defineRelations.
]
