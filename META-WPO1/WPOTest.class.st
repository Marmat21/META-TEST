Class {
	#name : #WPOTest,
	#superclass : #Object,
	#category : #'META-WPO1'
}

{ #category : #'as yet unclassified' }
WPOTest >> buggyMethod2: anInteger [
	| a |
	a := self buggyMethod: anInteger.
	^anInteger / a.
]

{ #category : #'as yet unclassified' }
WPOTest >> buggyMethod: anInteger [
	| a |
	self haltIf: [ anInteger > 2 ].
	a := 2.
	^anInteger / a.
]

{ #category : #'as yet unclassified' }
WPOTest >> helloTo: aName and: aName2 [
	| aName3 |
	aName3 := aName2.
	^ 'Hello ' , aName , ' and ' , aName3.
]

{ #category : #'as yet unclassified' }
WPOTest >> helloWorld [
	^ 'HELLO WORLD'.
]

{ #category : #'as yet unclassified' }
WPOTest >> helloWorld: aName [
	^ 'Hello ' , aName.
]

{ #category : #'as yet unclassified' }
WPOTest >> helloWorldTwo: aName [
	1 + 1.
	^ 'HELLO WORLD'.
]
