Extension { #name : #FASTPharoBlockDefinition }

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoBlockDefinition >> getFamixVariablesPool [
	^ self parentNode getFamixVariablesPool
]

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoBlockDefinition >> scope [
	self flag: 'NA: call to parentNode might be wrong (e.g. for java classes, parent -> superclass)'.

	self fastScope ifNil: [
		scope := FASTScope newWithParents: (OrderedCollection with: self parentScope).
		scope owner: self.
		(self getFamixVariablesForVariableNames: self parameters)     do: [:variable | scope add: variable].
		(self getFamixVariablesForVariableNames: self localVariables) do: [:variable | scope add: variable]].
	^ scope
]
