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
	#name : #AIDatasets,
	#superclass : #Object,
	#category : #'AI-Datasets'
}

{ #category : #utilities }
AIDatasets class >> dataDirectory [
	"Directory in which all dataset files will be stored"
	^ 'data' asFileReference ensureCreateDirectory
]

{ #category : #utilities }
AIDatasets class >> downloadDatasetNamed: aDatasetName [
	"Downloads dataset with a given name"
	
	| fileName |
	fileName := aDatasetName, '.csv'.
	
	ZnClient new
		url: 'https://raw.githubusercontent.com/PharoAI/DatasetsFiles/master/datasets/', fileName;
		downloadTo: self dataDirectory / fileName.
]

{ #category : #'api - loading' }
AIDatasets class >> loadBostonHousing [
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
		14. MEDV: Median value of owner-occupied homes in $1000's"
		
	^ self loadDatasetNamed: 'boston'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadBreastCancer [
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
	Date:	November, 1995"

	^ self loadDatasetNamed: 'breast_cancer'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadCreditCard [

	"Source: https://www.kaggle.com/arjunbhasin2013/ccdata
	
	This case requires to develop a customer segmentation to define marketing strategy. The
sample Dataset summarizes the usage behavior of about 9000 active credit card holders during the last 6 months. The file is at a customer level with 18 behavioral variables.

Following is the Data Dictionary for Credit Card dataset :-

CUSTID : Identification of Credit Card holder (Categorical)
BALANCE : Balance amount left in their account to make purchases (
BALANCEFREQUENCY : How frequently the Balance is updated, score between 0 and 1 (1 = frequently updated, 0 = not frequently updated)
PURCHASES : Amount of purchases made from account
ONEOFFPURCHASES : Maximum purchase amount done in one-go
INSTALLMENTSPURCHASES : Amount of purchase done in installment
CASHADVANCE : Cash in advance given by the user
PURCHASESFREQUENCY : How frequently the Purchases are being made, score between 0 and 1 (1 = frequently purchased, 0 = not frequently purchased)
ONEOFFPURCHASESFREQUENCY : How frequently Purchases are happening in one-go (1 = frequently purchased, 0 = not frequently purchased)
PURCHASESINSTALLMENTSFREQUENCY : How frequently purchases in installments are being done (1 = frequently done, 0 = not frequently done)
CASHADVANCEFREQUENCY : How frequently the cash in advance being paid
CASHADVANCETRX : Number of Transactions made with ""Cash in Advanced""
PURCHASESTRX : Numbe of purchase transactions made
CREDITLIMIT : Limit of Credit Card for user
PAYMENTS : Amount of Payment done by user
MINIMUM_PAYMENTS : Minimum amount of payments made by user
PRCFULLPAYMENT : Percent of full payment paid by user
TENURE : Tenure of credit card service for user"

	^ self loadDatasetNamed: 'credit_card_general'
]

{ #category : #private }
AIDatasets class >> loadDatasetNamed: aDatasetName [
	"Loads dataset with a given name into a data frame. If dataset is not found in a data directory, it is downloaded first"
	
	| file |
	file := self dataDirectory / (aDatasetName, '.csv').
	
	file exists ifFalse: [ 
		self downloadDatasetNamed: aDatasetName ].
	
	^ DataFrame readFromCsv: file.
]

{ #category : #'api - loading' }
AIDatasets class >> loadDiabetes [
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
	 y"
	
	^ self loadDatasetNamed: 'diabetes'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadDiabetesPima [
	"This dataset is originally from the National Institute of Diabetes and Digestive and Kidney 	Diseases. The objective of the dataset is to diagnostically predict whether or not a patient has 	diabetes, based on certain diagnostic measurements included in the dataset. Several constraints 	were placed on the selection of these instances from a larger database. In particular, all patients 	here are females at least 21 years old of Pima Indian heritage.
	
	https://www.kaggle.com/uciml/pima-indians-diabetes-database
	
	Number of Instances: 768
	Number of Attributes: First 8 columns are numeric predictive values
	Target: Column 9 is a binary outcome that indicates if the patient has cancer or not.
	Attribute Information:
    -Pregnancies
    -Glucose
    -BloodPressure
    -SkinThickness
    -Insulin
    -BMI
    -DiabetesPedigreeFunction
    -Age
    -Outcome"
	
	^ self loadDatasetNamed: 'diabetes_pima'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadDigits [
	"Loads optical recognition of handwritten digits dataset.
	This dataset is different that MNIST dataset.
	Number of Instances: 1797 (Source says 5620)
	Number of Attributes: 64
	Attribute Information: 8x8 image of integer pixels in the range 0..16.
	Creator: Alpaydin (alpaydin ‘@’ boun.edu.tr)"
	
	^ self loadDatasetNamed: 'digits'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadIris [
	"Loads Iris plants dataset.
	Number of Instances: 150 (50 in each of three classes)
	Number of Attributes: 4 numeric, predictive attributes and the class"
	
	^ self loadDatasetNamed: 'iris'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadMnistTest [
	"Loads MNIST testing data. Can take longer to load.
	The MNIST database of handwritten digits, available from http://yann.lecun.com/exdb/mnist/.
	The testing set has 10,000 examples. It is a subset of a larger set available from NIST.
	The digits have been size-normalized and centered in a fixed-size image. 
	"
	
	^ self loadDatasetNamed: 'mnist_test'.
]

{ #category : #'api - loading' }
AIDatasets class >> loadOldFaithful [

	"Loads the dataset with eruption and waiting time of Old Faithful Geyser.
	Number of Instances: 272
	Number of Attributes: 2
	
	Each row represents an observed eruption of the Old Faithful Geyser in Yellowstone National Park. The eruptions column represents the duration of the eruption in minutes, and the waiting column represents the duration in minutes until the next eruption.

Extracted from TSV file published in Bl.ocks.org: Density Contours. Also published as a built-in dataset with R. Primary source: Härdle, W. (1991) Smoothing Techniques with Implementation in S. New York: Springer."

	^ self loadDatasetNamed: 'faithful'
]

{ #category : #'api - loading' }
AIDatasets class >> loadRedWineQuality [

	"https://archive.ics.uci.edu/ml/datasets/wine+quality
	
	This is a dataset with several physicochemical inputs and a sensorial output. The ouput is the quality of the red wine.
	
	In the above reference, two datasets were created, using red and white wine samples.
  The inputs include objective tests (e.g. PH values) and the output is based on sensory data
  (median of at least 3 evaluations made by wine experts). Each expert graded the wine quality 
  between 0 (very bad) and 10 (very excellent). Several data mining methods were applied to model
  these datasets under a regression approach. The support vector machine model achieved the
  best results. Several metrics were computed: MAD, confusion matrix for a fixed error tolerance (T),
  etc. Also, we plot the relative importances of the input variables (as measured by a sensitivity
  analysis procedure).

	Number of Instances: red wine - 1599

	Number of Attributes: 11 + output attribute
	
	Input variables (based on physicochemical tests):
   1 - fixed acidity
   2 - volatile acidity
   3 - citric acid
   4 - residual sugar
   5 - chlorides
   6 - free sulfur dioxide
   7 - total sulfur dioxide
   8 - density
   9 - pH
   10 - sulphates
   11 - alcohol
   Output variable (based on sensory data): 
   12 - quality (score between 0 and 10)"

	^ self loadDatasetNamed: 'winequality-red'
]

{ #category : #'api - loading' }
AIDatasets class >> loadWhiteWineQuality [

	"https://archive.ics.uci.edu/ml/datasets/wine+quality
	
	This is a dataset with several physicochemical inputs and a sensorial output. The ouput is the quality of the WHITE wine.
	
	In the above reference, two datasets were created, using red and white wine samples.
  The inputs include objective tests (e.g. PH values) and the output is based on sensory data
  (median of at least 3 evaluations made by wine experts). Each expert graded the wine quality 
  between 0 (very bad) and 10 (very excellent). Several data mining methods were applied to model
  these datasets under a regression approach. The support vector machine model achieved the
  best results. Several metrics were computed: MAD, confusion matrix for a fixed error tolerance (T),
  etc. Also, we plot the relative importances of the input variables (as measured by a sensitivity
  analysis procedure).

	Number of Instances: red wine - 4898

	Number of Attributes: 11 + output attribute
	
	Input variables (based on physicochemical tests):
   1 - fixed acidity
   2 - volatile acidity
   3 - citric acid
   4 - residual sugar
   5 - chlorides
   6 - free sulfur dioxide
   7 - total sulfur dioxide
   8 - density
   9 - pH
   10 - sulphates
   11 - alcohol
   Output variable (based on sensory data): 
   12 - quality (score between 0 and 10)"

	^ self loadDatasetNamed: 'winequality-white'
]

{ #category : #'api - loading' }
AIDatasets class >> loadWine [
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
    class"
	
	^ self loadDatasetNamed: 'wine'.
]
