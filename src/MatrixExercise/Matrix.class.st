Class {
	#name : #Matrix,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #MatrixExercise
}

{ #category : #accessing }
Matrix >> columns [ 
	"This method returns the number of columns of the matrix."
	^ (data first) size
]

{ #category : #accessing }
Matrix >> data [
	^ data
]

{ #category : #accessing }
Matrix >> getSpecificValue: i column: j [ 
"Get a value at a specific location using indexs can't use 00 in parameter because at"
   		(i < 1 or: [ j < 1 ]) ifTrue: [ self error: 'Cant have zero in parameter' ].
       ^ (data at: i) at: j

]

{ #category : #initialization }
Matrix >> initializeWithData: dataArray rows: rows columns: columns [
    "This method initializes a new DenseMatrix instance with the specified data."

    | rowIndex columnIndex rowCount |
    data := Array new: rows.
	 rowCount := 0.
    rowIndex := 1.
    dataArray do: [ :row |
        | newRow |
		  rowCount := rowCount + 1.
        newRow := Array new: columns.
        columnIndex := 1.
        row do: [ :element |
            newRow at: columnIndex put: element.
            columnIndex := columnIndex + 1.
        ].
			(columnIndex - 1 < columns) ifTrue: [ self error: 'Dont have enought column' ].
        data at: rowIndex put: newRow.
        rowIndex := rowIndex + 1.
    ].
	 (rowCount < rows) ifTrue: [ self error: 'Dont have enought line' ].
]

{ #category : #accessing }
Matrix >> rows [ 
	"This method returns the number of rows of the matrix."
	^ data size

]

{ #category : #initialization }
Matrix >> setSpecificValue: i column: j to: value [
    "Définit une valeur à un emplacement spécifique dans la matrice."

    (i < 1 or: [ j < 1 ]) ifTrue: [ self error: 'Les indices ne peuvent pas être inférieurs à 1.' ].

    (i > data size or: [ j > (data at: 1) size ]) ifTrue: [ self error: 'Indices hors des limites de la matrice.' ].

    (data at: i) at: j put: value.

]
