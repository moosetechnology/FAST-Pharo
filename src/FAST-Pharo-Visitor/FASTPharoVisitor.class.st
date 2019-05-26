Class {
	#name : #FASTPharoVisitor,
	#superclass : #FASTCoreVisitor,
	#category : #'FAST-Pharo-Visitor'
}

{ #category : #visiting }
FASTPharoVisitor >> visitArrayLiteral: anArrayLiteral [
	^ self visitFASTLiteral: anArrayLiteral
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
	^ self visitFASTBehaviouralEntity: aPharoBlockDefinition
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoBlockExpression: aPharoBlockExpression [
	^ self visitPharoExpression: aPharoBlockExpression
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoByteArrayLiteral: aPharoByteArrayLiteral [
	^ self visitFASTLiteral: aPharoByteArrayLiteral
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoCascade: aPharoCascade [
	^ self visitPharoExpression: aPharoCascade
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoExpression: aPharoExpression [
	^ self visitFASTExpression: aPharoExpression
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoMessageSend: aPharoMessageSend [
	^ self visitExpression: aPharoMessageSend
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoMethodEntity: aPharoMethodEntity [
	^ self visitFASTNamedBehaviouralEntity: aPharoMethodEntity
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoNumberLiteral: aPharoNumberLiteral [
	^ self visitFASTLiteral: aPharoNumberLiteral
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoSelector: aPharoSelector [
	^ self visitFASTEntity: aPharoSelector
]

{ #category : #visiting }
FASTPharoVisitor >> visitPharoSymbolLiteral: aPharoSymbolLiteral [
	^ self visitFASTLiteral: aPharoSymbolLiteral
]
