"
I load toy datasets in form of a DataFrame object.

The datasets are available in json format, which are downloaded when repository is cloned.

Public API:
- loadBoston  
- loadBreastCancer
- loadDiabetes
- loadDigits
- loadIris
- loadMnistTest
- loadWine

Example:
	df := DataSet loadBoston.
"
Class {
	#name : #DataSet,
	#superclass : #Object,
	#category : #DataSet
}

{ #category : #loading }
DataSet class >> loadBoston [
	"Loads Boston house prices dataset. Sources:
	(a) Origin: This dataset was taken from the StatLib library which
	    is maintained at Carnegie Mellon University.
	(b) Creator: Harrison, D. and Rubinfeld, D.L. 'Hedonic prices and
	    the demand for clean air', J. Environ. Economics & Management,
	    vol.5, 81-102, 1978.
	Number of Instances: 506
	Number of Attributes: 13
	Attribute Information:
		1. CRIM: per capita crime rate by town
		2. ZN: proportion of residential land zoned for lots over 25,000 sq.ft.
		3. INDUS: proportion of non-retail business acres per town
		4. CHAS: Charles River dummy variable (= 1 if tract bounds river; 0 otherwise)
		5. NOX: nitric oxides concentration (parts per 10 million)
		6. RM: average number of rooms per dwelling
		7. AGE: proportion of owner-occupied units built prior to 1940
		8. DIS: weighted distances to five Boston employment centres
		9. RAD: index of accessibility to radial highways
		10. TAX: full-value property-tax rate per $10,000
		11. PTRATIO: pupil-teacher ratio by town
		12. B: 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town
		13. LSTAT: % lower status of the population
		14. MEDV: Median value of owner-occupied homes in $1000's
	"

	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'boston.json'.
]

{ #category : #loading }
DataSet class >> loadBreastCancer [
	"Loads breast cancer wisconsin (diagnostic) dataset.
	Number of Instances: 569
	Number of Attributes: 30
	Attribute Information:
 		radius (mean of distances from center to points on the perimeter)
    	texture (standard deviation of gray-scale values)
   		perimeter
    	area
    	smoothness (local variation in radius lengths)
    	compactness (perimeter^2 / area - 1.0)
    	concavity (severity of concave portions of the contour)
    	concave points (number of concave portions of the contour)
    	symmetry
    	fractal dimension (“coastline approximation” - 1)
    class:
    	WDBC-Malignant
      WDBC-Benign
	Class Distribution: 212 - Malignant, 357 - Benign
	Creator:	Dr. William H. Wolberg, W. Nick Street, Olvi L. Mangasarian
	Donor:	 Nick Street
	Date:	November, 1995
	"

	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'breast_cancer.json'.
]

{ #category : #loading }
DataSet class >> loadDiabetes [
	"Loads diabetes dataset.
	Number of Instances: 442
	Number of Attributes: First 10 columns are numeric predictive values
	Target: Column 11 is a quantitative measure of disease progression one year after baseline
	Attribute Information:
    Age
    Sex
    Body mass index
    Average blood pressure
    S1
    S2
    S3
    S4
    S5
    S6
	 y
	"
	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'diabetes.json'.
]

{ #category : #loading }
DataSet class >> loadDigits [
	"Loads optical recognition of handwritten digits dataset.
	This dataset is different that MNIST dataset.
	Number of Instances: 1797 (Source says 5620)
	Number of Attributes: 64
	Attribute Information: 8x8 image of integer pixels in the range 0..16.
	Creator: Alpaydin (alpaydin ‘@’ boun.edu.tr)
	"
	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'digits.json'.
]

{ #category : #loading }
DataSet class >> loadIris [
	"Loads Iris plants dataset.
	Number of Instances: 150 (50 in each of three classes)
	Number of Attributes: 4 numeric, predictive attributes and the class
	"
	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'iris.json'.
]

{ #category : #loading }
DataSet class >> loadMnistTest [
	"Loads MNIST training data. Can take longer to load.
	The MNIST database of handwritten digits, available from http://yann.lecun.com/exdb/mnist/.
	The testing set has 10,000 examples. It is a subset of a larger set available from NIST.
	The digits have been size-normalized and centered in a fixed-size image. 
	"
	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'mnist_test.json'.
]

{ #category : #loading }
DataSet class >> loadWine [
	"Loads Wine recognition dataset.
	Number of Instances: 178 (50 in each of three classes)
	Number of Attributes: 13 numeric, predictive attributes and the class
	Attribute Information:
    Alcohol
    Malic acid
    Ash
    Alcalinity of ash
    Magnesium
    Total phenols
    Flavanoids
    Nonflavanoid phenols
    Proanthocyanins
    Color intensity
    Hue
    OD280/OD315 of diluted wines
    Proline
    class
	"
	^ DataFrame readFromJson: DataSetBridge root / 'data' / 'wine.json'.
]
