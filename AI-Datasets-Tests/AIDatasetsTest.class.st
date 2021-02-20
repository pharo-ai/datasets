"
A DataSetTest is a test class for testing the behavior of DataSet
"
Class {
	#name : #AIDatasetsTest,
	#superclass : #TestCase,
	#category : #'AI-Datasets-Tests'
}

{ #category : #tests }
AIDatasetsTest >> testLoadBoston [
	| df |
	df := AIDatasets loadBoston.
	self assert: df size equals: 506.
]

{ #category : #tests }
AIDatasetsTest >> testLoadBreastCancer [
	| df |
	df := AIDatasets loadBreastCancer.
	self assert: df size equals: 569.
]

{ #category : #tests }
AIDatasetsTest >> testLoadDiabetes [
	| df |
	df := AIDatasets loadDiabetes.
	self assert: df size equals: 442.
]

{ #category : #tests }
AIDatasetsTest >> testLoadDigits [
	| df |
	df := AIDatasets loadDigits.
	self assert: df size equals: 1797.
]

{ #category : #tests }
AIDatasetsTest >> testLoadIris [
	| df |
	df := AIDatasets loadIris.
	self assert: df size equals: 150.
]

{ #category : #tests }
AIDatasetsTest >> testLoadWine [
	| df |
	df := AIDatasets loadWine.
	self assert: df size equals: 178.
]
