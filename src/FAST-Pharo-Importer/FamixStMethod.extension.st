Extension { #name : #FamixStMethod }

{ #category : #'*FAST-Pharo-Importer' }
FamixStMethod >> generateFAST [
	<menuItem: 'Generate FAST'>
	
		| visitor |
		visitor := FASTSmalltalkImporterVisitor new.
		^ visitor runWithSource: self sourceText
]
