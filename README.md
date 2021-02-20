# Pharo Datasets
[![.github/workflows/cimatrix.yml](https://github.com/pharo-ai/Datasets/workflows/CI/badge.svg)](https://github.com/pharo-ai/Datasets/actions)

Datasets library is used to load datasets in Pharo. The datasets are loaded as [DataFrame](https://github.com/PolyMathOrg/DataFrame/) objects.


## Installation

To install `Datasets`, go to the Playground (`Ctrl+OW`) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```smalltalk
Metacello new
  baseline: 'AIDatasets';
  repository: 'github://pharo-ai/datasets';
  load.
```

## If you want to depend on it

```smalltalk
spec 
   baseline: 'AIDatasets' 
   with: [ spec repository: 'github://pharo-ai/datasets' ].
```

## Usage

To load a dataset, using `AIDatasets loadXYZ`. For example:

```smalltalk
AIDatasets loadBoston.
AIDatasets loadBreastCancer.
AIDatasets loadWine.
AIDatasets loadDiabetes.
AIDatasets loadDigits.
AIDatasets loadMnistTest.
AIDatasets loadIris.
```

Loading a new dataset involves downloading the CSV file into the data/ directory in the local folder of your image. Then the data is read from the file and returned to you as a DataFrame object.
