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
		'symbolLiteral'
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
	expression := builder newClassNamed: #Expression.
	arrayExpression := builder newClassNamed: #ArrayExpression.
	assignmentExpression := builder newClassNamed: #AssignmentExpression.
	blockExpression := builder newClassNamed: #BlockExpression.
	cascade := builder newClassNamed: #Cascade.
	messageSend := builder newClassNamed: #MessageSend.
	methodEntity := builder newClassNamed: #MethodEntity.
	numberLiteral := builder newClassNamed: #NumberLiteral.
	selector := builder newClassNamed: #Selector.
	symbolLiteral := builder newClassNamed: #SymbolLiteral.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineProperties [
	super defineProperties.
]

{ #category : #definition }
FASTPharoMetamodelGenerator >> defineRelations [
	super defineRelations.
]
