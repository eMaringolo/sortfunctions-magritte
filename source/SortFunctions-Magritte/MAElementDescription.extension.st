Extension { #name : #MAElementDescription }

{ #category : #'*SortFunctions-Magritte' }
MAElementDescription >> asSortFunction [

	^self ascending
]

{ #category : #'*SortFunctions-Magritte' }
MAElementDescription >> ascending [
	"Return a SortFunction around the receiver, where the receiver will be used to read the value used for comparison to both a and b during sorting."

	^(MADescriptionSortFunction description: self)
]

{ #category : #'*SortFunctions-Magritte' }
MAElementDescription >> descending [
	"Opposite direction as ascending."

	^self ascending reversed
]
