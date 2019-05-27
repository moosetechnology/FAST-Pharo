Class {
	#name : #SmalltalkFastMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

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
	self assert: returnMethod parentNode isNil
]
