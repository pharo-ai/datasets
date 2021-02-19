"
A DataSetTest is a test class for testing the behavior of DataSet
"
Class {
	#name : #DatasetsTest,
	#superclass : #TestCase,
	#category : #'AI-Datasets-Tests'
}

{ #category : #tests }
DatasetsTest >> testLoadBoston [
	| df |
	df := AIDatasets loadBoston.
	self assert: df size equals: 506.
]

{ #category : #tests }
DatasetsTest >> testLoadBreastCancer [
	| df |
	df := AIDatasets loadBreastCancer.
	self assert: df size equals: 569.
]

{ #category : #tests }
DatasetsTest >> testLoadDiabetes [
	| df |
	df := AIDatasets loadDiabetes.
	self assert: df size equals: 442.
]

{ #category : #tests }
DatasetsTest >> testLoadDigits [
	| df |
	df := AIDatasets loadDigits.
	self assert: df size equals: 1797.
]

{ #category : #tests }
DatasetsTest >> testLoadIris [
	| df |
	df := AIDatasets loadIris.
	self assert: df size equals: 150.
]

{ #category : #tests }
DatasetsTest >> testLoadWine [
	| df |
	df := AIDatasets loadWine.
	self assert: df size equals: 178.
]
