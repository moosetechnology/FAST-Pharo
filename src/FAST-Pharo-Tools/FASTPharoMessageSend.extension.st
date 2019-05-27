Extension { #name : #FASTPharoMessageSend }

{ #category : #'*FAST-Pharo-Tools' }
FASTPharoMessageSend classSide >> branchSelectors [
	^ #(
		ifTrue:
		ifFalse:
		ifTrue:ifFalse:
		ifFalse:ifTrue:
		ifNil:
		ifNil:ifNotNil:
		ifNotNil:ifNil:
		ifNotNil:
		at:ifAbsent:
		at:ifAbsentPut:
		on:do:
		and:
		or:
		xor:)
]

{ #category : #'*FAST-Pharo-Tools' }
FASTPharoMessageSend >> cycloComplexityDonation [
	| complexityDonation |
	complexityDonation := 0.
	self class branchSelectors	detect: [:each | each = self selector name] ifOne: [:sth | complexityDonation := complexityDonation + 1].
	self class loopSelectors	detect: [:each | each = self selector name] ifOne: [:sth | complexityDonation := complexityDonation + 1].
	^ complexityDonation 
]

{ #category : #'*FAST-Pharo-Tools' }
FASTPharoMessageSend classSide >> loopSelectors [
	^ #(
		whileTrue:
		whileTrue
		whileFalse
		whileFalse:
		timesRepeat:
		to:do:
		do:separatedBy:
		do:
		collect:
		select:
		reject:
		inject:into:
		detect:
		detect:ifNone:
		anySatisfy:
		allSatisfy:)
]
