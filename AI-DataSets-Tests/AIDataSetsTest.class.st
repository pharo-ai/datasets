"
A DataSetTest is a test class for testing the behavior of DataSet
"
Class {
	#name : #AIDataSetsTest,
	#superclass : #TestCase,
	#category : #'AI-DataSets-Tests'
}

{ #category : #tests }
AIDataSetsTest >> testLoadBoston [
	| df |
	df := AIDataSets loadBoston.
	self assert: df size equals: 506.
]

{ #category : #tests }
AIDataSetsTest >> testLoadBreastCancer [
	| df |
	df := AIDataSets loadBreastCancer.
	self assert: df size equals: 569.
]

{ #category : #tests }
AIDataSetsTest >> testLoadDiabetes [
	| df |
	df := AIDataSets loadDiabetes.
	self assert: df size equals: 442.
]

{ #category : #tests }
AIDataSetsTest >> testLoadDigits [
	| df |
	df := AIDataSets loadDigits.
	self assert: df size equals: 1797.
]

{ #category : #tests }
AIDataSetsTest >> testLoadIris [
	| df |
	df := AIDataSets loadIris.
	self assert: df size equals: 150.
]

{ #category : #tests }
AIDataSetsTest >> testLoadOldFaithful [
	| df |
	df := AIDataSets loadOldFaithful.
	self assert: df size equals: 272.
]

{ #category : #tests }
AIDataSetsTest >> testLoadWine [
	| df |
	df := AIDataSets loadWine.
	self assert: df size equals: 178.
]
