"
This baseline is used to load the packages of the DataSet library.

Load type: 
- linear

Installs:

"
Class {
	#name : #BaselineOfDatasets,
	#superclass : #BaselineOf,
	#category : #BaselineOfDatasets
}

{ #category : #baselines }
BaselineOfDatasets >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		"External dependencies"
		spec
			baseline: 'DataFrame'
    		with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
		"Packages"
		spec 
			package: 'Datasets';
			package: 'Datasets-Tests' with: [ spec requires: #('Datasets') ] ].
]
