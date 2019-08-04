"
A DataSetTest is a test class for testing the behavior of DataSet
"
Class {
	#name : #DataSetTest,
	#superclass : #TestCase,
	#category : #'DataSet-Tests'
}

{ #category : #tests }
DataSetTest >> testLoadBoston [
	| df |
	df := DataSet loadBoston.
	self assert: df size equals: 506.
]

{ #category : #tests }
DataSetTest >> testLoadBreastCancer [
	| df |
	df := DataSet loadBreastCancer.
	self assert: df size equals: 569.
]

{ #category : #tests }
DataSetTest >> testLoadDiabetes [
	| df |
	df := DataSet loadDiabetes.
	self assert: df size equals: 442.
]

{ #category : #tests }
DataSetTest >> testLoadDigits [
	| df |
	df := DataSet loadDigits.
	self assert: df size equals: 1797.
]

{ #category : #tests }
DataSetTest >> testLoadIris [
	| df |
	df := DataSet loadIris.
	self assert: df size equals: 150.
]

{ #category : #tests }
DataSetTest >> testLoadWine [
	| df |
	df := DataSet loadWine.
	self assert: df size equals: 178.
]
