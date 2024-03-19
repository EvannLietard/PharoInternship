Class {
	#name : #MatrixTest,
	#superclass : #TestCase,
	#category : #MatrixExerciseTest
}

{ #category : #tests }
MatrixTest >> testCounterNotZeroElement [
	"test the method getSpecificValue"
	|mat|
	mat:= Matrix new initializeWithData: #(#(1 2)#(4 1)) rows: 2  columns: 2.
	self assert: (mat countNotZerosInData) equals:4.

]

{ #category : #tests }
MatrixTest >> testInitialize [
	|mat|
	mat:= Matrix new initializeWithData: #(#(1 2)#(2 1)) rows: 2  columns: 2.
	self assert: ((mat data at: 1) at: 1) equals: 1.
   self assert: ((mat data at: 1) at: 2) equals: 2.
   self assert: ((mat data at: 2) at: 1) equals: 2.
   self assert: ((mat data at: 2) at: 2) equals: 1.
]

{ #category : #tests }
MatrixTest >> testInitializeAtZero [
	| mat |
	mat:= Matrix new initializeWithZeros: 2 columns: 2.
	self assert: mat data size equals: 2.
	self assert: (mat data at: 1) equals: #(0 0 ).
	self assert: (mat data at: 2) equals: #(0 0 ).

]

{ #category : #tests }
MatrixTest >> testSpecificGetter [
	"test the method getSpecificValue"
	|mat|
	mat:= Matrix new initializeWithData: #(#(1 2)#(4 1)) rows: 2  columns: 2.
	self assert: (mat getSpecificValue: 1 column:2 ) equals: 2.
]

{ #category : #tests }
MatrixTest >> testSpecificSetter [
	"test the method setSpecificValue"
	|mat|
	mat:= Matrix new initializeWithData: #(#(1 2)#(4 1)) rows: 2  columns: 2.
	mat setSpecificValue: 1 column: 2 to: 6.
	self assert: (mat getSpecificValue: 1 column:2 ) equals: 6.
]

{ #category : #tests }
MatrixTest >> testToCompactMatrix [ 
	| mat compactMatrix  |
	mat:= Matrix new initializeWithData: #(#(1 2)#(2 1)) rows: 2  columns: 2.
	compactMatrix:= mat toCompactMatrix .
	self assert: compactMatrix size = 4.
   self assert: (compactMatrix at: 1) = #(1 1 1).
   self assert: (compactMatrix at: 2) = #(1 2 2).
	self assert: (compactMatrix at: 3) = #(2 1 2).
	self assert: (compactMatrix at: 4) = #(2 2 1).

]
