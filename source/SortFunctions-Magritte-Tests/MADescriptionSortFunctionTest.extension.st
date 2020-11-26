Extension { #name : #MADescriptionSortFunctionTest }

{ #category : #'*SortFunctions-Magritte-Tests' }
MADescriptionSortFunctionTest >> testMagritteDescription [

	| function xDescription |
	xDescription := (MANumberDescription new label: 'X coord'; accessor: #x ).
	function := xDescription ascending.
	self assert: (function value: 1@1 value: 1@2).
	self assert: (function value: 2@1 value: 3@2).
	function := xDescription descending.
	self deny: (function value: 1@1 value: 2@2).
	self deny: (function value: 2@1 value: 3@2)	
	


]
