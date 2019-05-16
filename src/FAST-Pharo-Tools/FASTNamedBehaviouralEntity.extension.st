Extension { #name : #FASTNamedBehaviouralEntity }

{ #category : #'*FAST-Pharo-Tools' }
FASTNamedBehaviouralEntity >> mooseFinderPrintedSourceTextIn: composite [
	<moosePresentationOrder: 10>
	composite text
			title: 'Printed Source';
			titleIcon: MooseIcons mooseSourceTextPartial;
			display: [ :each |
				self privateState
					cacheAt: #printedSource
					ifAbsentPut: (FASTPharoPrintingVisitor print: each mooseInterestingEntity) ]
]
