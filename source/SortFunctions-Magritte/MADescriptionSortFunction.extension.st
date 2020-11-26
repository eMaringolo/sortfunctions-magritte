Extension { #name : #MADescriptionSortFunction }

{ #category : #'*SortFunctions-Magritte' }
MADescriptionSortFunction >> collate: objectA with: objectB [
	^ (self description accessor read: objectA)
		threeWayCompareTo: (self description accessor read: objectB)
]

{ #category : #'*SortFunctions-Magritte' }
MADescriptionSortFunction >> description [

	^description
]

{ #category : #'*SortFunctions-Magritte' }
MADescriptionSortFunction >> setDescription: anMADescription [
	"Private - Sets anMADescription to be used as receiver collator."

	description := anMADescription 
]
