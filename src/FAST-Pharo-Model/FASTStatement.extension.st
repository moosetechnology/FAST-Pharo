Extension { #name : #FASTStatement }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTStatement >> pharoBlockStatementOwner [
	"Relation named: #pharoBlockStatementOwner type: #FASTPharoBlockDefinition opposite: #statements"

	<generated>
	<container>
	<FMProperty: #pharoBlockStatementOwner type: #FASTPharoBlockDefinition opposite: #statements>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoBlockStatementOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTStatement >> pharoBlockStatementOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoBlockStatementOwner put: (FMMultivalueLink on: self update: #statements from: self pharoBlockStatementOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTStatement >> pharoMethodStatementOwner [
	"Relation named: #pharoMethodStatementOwner type: #FASTPharoMethodEntity opposite: #statements"

	<generated>
	<container>
	<FMProperty: #pharoMethodStatementOwner type: #FASTPharoMethodEntity opposite: #statements>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoMethodStatementOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTStatement >> pharoMethodStatementOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoMethodStatementOwner put: (FMMultivalueLink on: self update: #statements from: self pharoMethodStatementOwner to: anObject).
]
