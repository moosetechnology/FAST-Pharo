Class {
	#name : #FASTPharoVisitor,
	#superclass : #FASTCoreVisitor,
	#category : #'FAST-Pharo-Visitor'
}

{ #category : #visiting }
FASTPharoVisitor >> visitArrayLiteral: anArrayLiteral [
	^ self visitFASTTLiteral: anArrayLiteral
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoArrayExpression: anArrayExpression [
	^ self visitPharoExpression: anArrayExpression
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoAssignmentExpression: aPharoAssignmentExpression [
	^ self visitPharoExpression: aPharoAssignmentExpression
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoBlockDefinition: aPharoBlockDefinition [
	^ self visitFASTTBehaviouralEntity: aPharoBlockDefinition
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoBlockExpression: aPharoBlockExpression [
	^ self visitPharoExpression: aPharoBlockExpression
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoByteArrayLiteral: aPharoByteArrayLiteral [
	^ self visitFASTTLiteral: aPharoByteArrayLiteral
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoCascade: aPharoCascade [
	^ self visitPharoExpression: aPharoCascade
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoExpression: aPharoExpression [
	^ self visitFASTTExpression: aPharoExpression
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoMessageSend: aPharoMessageSend [
	^ self visitExpression: aPharoMessageSend
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoMethodEntity: aPharoMethodEntity [
	^ self visitFASTTNamedBehaviouralEntity: aPharoMethodEntity
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoNumberLiteral: aPharoNumberLiteral [
	^ self visitFASTTLiteral: aPharoNumberLiteral
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoSelector: aPharoSelector [
	^ self visitFASTEntity: aPharoSelector
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoSymbolLiteral: aPharoSymbolLiteral [
	^ self visitFASTTLiteral: aPharoSymbolLiteral
]
