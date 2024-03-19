Class {
	#name : #MatrixTest,
	#superclass : #TestCase,
	#category : #MatrixExerciseTest
}

{ #category : #tests }
MatrixTest >> testInitialize [
	|mat|
	mat:= Matrix new initializeWithData: #(#(1 2)#(2 1)) rows: 2  columns: 2.
	self assert: ((mat data at: 1) at: 1) equals: 1.
   self assert: ((mat data at: 1) at: 2) equals: 2.
   self assert: ((mat data at: 2) at: 1) equals: 2.
   self assert: ((mat data at: 2) at: 2) equals: 1.
]