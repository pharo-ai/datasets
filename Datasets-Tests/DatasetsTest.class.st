"
A DataSetTest is a test class for testing the behavior of DataSet
"
Class {
	#name : #DatasetsTest,
	#superclass : #TestCase,
	#category : #'Datasets-Tests'
}

{ #category : #tests }
DatasetsTest >> testLoadBoston [
	| df |
	df := Datasets loadBoston.
	self assert: df size equals: 506.
]

{ #category : #tests }
DatasetsTest >> testLoadBreastCancer [
	| df |
	df := Datasets loadBreastCancer.
	self assert: df size equals: 569.
]

{ #category : #tests }
DatasetsTest >> testLoadDiabetes [
	| df |
	df := Datasets loadDiabetes.
	self assert: df size equals: 442.
]

{ #category : #tests }
DatasetsTest >> testLoadDigits [
	| df |
	df := Datasets loadDigits.
	self assert: df size equals: 1797.
]

{ #category : #tests }
DatasetsTest >> testLoadIris [
	| df |
	df := Datasets loadIris.
	self assert: df size equals: 150.
]

{ #category : #tests }
DatasetsTest >> testLoadWine [
	| df |
	df := Datasets loadWine.
	self assert: df size equals: 178.
]
