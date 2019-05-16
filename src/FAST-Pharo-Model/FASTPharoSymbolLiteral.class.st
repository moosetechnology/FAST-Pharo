"
A symbol literal
"
Class {
	#name : #FASTPharoSymbolLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoSymbolLiteral class >> annotation [
	<MSEClass: #PharoSymbolLiteral super: #FASTLiteral>
	<package: #FAST>
]

{ #category : #accessing }
FASTPharoSymbolLiteral >> value [

	^ '#', value asString
]
