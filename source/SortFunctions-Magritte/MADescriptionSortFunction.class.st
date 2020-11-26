"
I sort objects using the value returned by my Description accessor.


E.g.
The following will sort the customers collection first by nameDescription and then by *representativeDescription * leaving those without an assigned sales representative at the end.

customers sorted: nameDescription ascending, representativeDescription descending undefinedLast

"
Class {
	#name : #MADescriptionSortFunction,
	#superclass : #SortFunction,
	#instVars : [
		'description'
	],
	#category : #'SortFunctions-Magritte'
}

{ #category : #'instance creation' }
MADescriptionSortFunction class >> for: aDescription [

	^self new setDescription: aDescription; yourself
]

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
