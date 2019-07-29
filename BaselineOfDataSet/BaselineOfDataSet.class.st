"
This baseline is used to load the packages of the DataSet library.

Load type: 
- linear

Installs:

"
Class {
	#name : #BaselineOfDataSet,
	#superclass : #BaselineOf,
	#category : #BaselineOfDataSet
}

{ #category : #baselines }
BaselineOfDataSet >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		"External dependencies"
		spec
			baseline: 'GitBridge'
    		with: [ spec repository: 'github://jecisc/GitBridge/src' ].
		spec
			baseline: 'DataFrame'
    		with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
		"Packages"
		spec package: 'DataSet'.
		].
]
