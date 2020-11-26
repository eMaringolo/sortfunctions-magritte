Extension { #name : #MADescriptionSortFunction }

{ #category : #'*SortFunctions-Magritte' }
MADescriptionSortFunction >> collate: objectA with: objectB [
	^ (self description accessor read: objectA)
		threeWayCompareTo: (self description accessor read: objectB)
]

{ #category : #'*SortFunctions-Magritte' }
MADescriptionSortFunction >> description [

	^self property
]
