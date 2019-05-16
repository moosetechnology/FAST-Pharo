Class {
	#name : #SmalltalkFastMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkFastMethodTestCase >> testMethodFamixRelation [
	| famixMethod |
	famixMethod := returnMethod parentNode.
	self assert: famixMethod fastBehaviouralEntity == returnMethod
]

{ #category : #tests }
SmalltalkFastMethodTestCase >> testMethodName [
	self
		assert: sendMessageMethod name	equals: 'sendMessage';
		assert: spaceshipMethod name	equals: '<=>';
		assert: returnMethod name		equals: 'return:';
		assert: middleMethod name		equals: 'middleOf:and:';
		assert: cascadeMethod name		equals: 'cascade'
]

{ #category : #tests }
SmalltalkFastMethodTestCase >> testMethodParent [
	self assert: returnMethod parentNode isNotNil
]
