Extension { #name : #FASTPharoSelector }

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoSelector >> matches: anEntity [
	"matches if entity is a function or method: FAMIXBehaviouralEntity"
	
	^ anEntity isKindOf: FAMIXBehaviouralEntity
]

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoSelector >> nameByPolicy [
	^ self sourceLanguage casePolicy: self name
]
