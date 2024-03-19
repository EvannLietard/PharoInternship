Class {
	#name : #Matrix,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #MatrixExercise
}

{ #category : #initialization }
Matrix >> data [
	^ data
]

{ #category : #initialization }
Matrix >> initializeWithData: dataArray rows: rows columns: columns [
    "This method initializes a new DenseMatrix instance with the specified data."

    | rowIndex columnIndex |
    data := Array new: rows.
    rowIndex := 1.
    dataArray do: [ :row |
        | newRow |
        newRow := Array new: columns.
        columnIndex := 1.
        row do: [ :element |
            newRow at: columnIndex put: element.
            columnIndex := columnIndex + 1.
        ].
        data at: rowIndex put: newRow.
        rowIndex := rowIndex + 1.
    ].
]
