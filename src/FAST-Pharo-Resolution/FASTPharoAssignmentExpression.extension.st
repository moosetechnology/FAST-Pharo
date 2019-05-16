Extension { #name : #FASTPharoAssignmentExpression }

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoAssignmentExpression >> matches: anEntity [
	"matches if receiver's variable does"
	
	^ self variable matches: anEntity 
]

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoAssignmentExpression >> resolveAllSymbols [
	self expression resolveAllSymbols.
	self resolve: variable

]
