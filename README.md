# Pharo Datasets
[![Build Status](https://travis-ci.org/PharoAI/Datasets.svg?branch=master)](https://travis-ci.org/PharoAI/Datasets)

Datasets library is used to load datasets in Pharo. The datasets are loaded as [DataFrame](https://github.com/PolyMathOrg/DataFrame/) objects.


## Installation

To install `Datasets`, go to the Playground (`Ctrl+OW`) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```smalltalk
Metacello new
  baseline: 'Datasets';
  repository: 'github://pharo-ai/Datasets';
  load.
```

## If you want to depend on it

```smalltalk
spec 
   baseline: 'Datasets' 
   with: [ spec repository: 'github://pharo-ai/Datasets' ].
```

## Usage

To load a dataset, using `Datasets loadXYZ`. For example:

```smalltalk
Datasets loadBoston.
Datasets loadBreastCancer.
Datasets loadWine.
Datasets loadDiabetes.
Datasets loadDigits.
Datasets loadMnistTest.
Datasets loadIris.
```

Loading a new dataset involves downloading the CSV file into the data/ directory in the local folder of your image. Then the data is read from the file and returned to you as a DataFrame object.
