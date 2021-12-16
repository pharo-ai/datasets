"
This baseline is used to load the packages of the DataSet library.

Load type: 
- linear

Installs:

"
Class {
	#name : #BaselineOfAIDataSets,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIDataSets
}

{ #category : #baselines }
BaselineOfAIDataSets >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		"External dependencies"
		spec
			baseline: 'DataFrame'
    		with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
		
		"Packages"
		spec 
			package: 'AI-DataSets';
			package: 'AI-DataSets-Tests' with: [ spec requires: #('AI-DataSets') ] ].
]
