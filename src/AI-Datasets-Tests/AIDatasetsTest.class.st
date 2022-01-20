"
A DataSetTest is a test class for testing the behavior of DataSet
"
Class {
	#name : #AIDatasetsTest,
	#superclass : #TestCase,
	#category : #'AI-Datasets-Tests'
}

{ #category : #tests }
AIDatasetsTest >> testLoadBostonHousing [
	| df |
	df := AIDatasets loadBostonHousing.
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
AIDatasetsTest >> testLoadDiabetesPima [

	| df |
	df := AIDatasets loadDiabetesPima.
	self assert: df size equals: 768.
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
AIDatasetsTest >> testLoadOldFaithful [
	| df |
	df := AIDatasets loadOldFaithful.
	self assert: df size equals: 272.
]

{ #category : #tests }
AIDatasetsTest >> testLoadRedWineQuality [
	| df |
	df := AIDatasets loadRedWineQuality.
	self assert: df size equals: 1599.
]

{ #category : #tests }
AIDatasetsTest >> testLoadWhiteWineQuality [
	| df |
	df := AIDatasets loadWhiteWineQuality.
	self assert: df size equals: 4898.
]

{ #category : #tests }
AIDatasetsTest >> testLoadWine [
	| df |
	df := AIDatasets loadWine.
	self assert: df size equals: 178.
]
