Class {
	#name : #DataSetBridge,
	#superclass : #GitBridge,
	#category : #DataSet
}

{ #category : #'class initialization' }
DataSetBridge class >> initialize [
	SessionManager default registerSystemClassNamed: self name
]
