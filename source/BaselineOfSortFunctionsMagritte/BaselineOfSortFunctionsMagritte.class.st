Class {
	#name : #BaselineOfSortFunctionsMagritte,
	#superclass : #BaselineOf,
	#category : #BaselineOfSortFunctionsMagritte
}

{ #category : #baselines }
BaselineOfSortFunctionsMagritte >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Magritte'
				with: [ spec repository: 'github://magritte-metamodel/magritte' ].
			spec
				package: 'SortFunctions-Magritte'
					with: [ spec requires: #('Magritte') ];
				package: 'SortFunctions-Magritte-Tests'
					with: [ spec requires: #('SortFunctions-Magritte') ].
			spec
				group: 'Core' with: #('SortFunctions-Magritte');
				group: 'Tests' with: #('SortFunctions-Magrite-Tests');
				group: 'default' with: #('Core' 'Tests') ]
]
