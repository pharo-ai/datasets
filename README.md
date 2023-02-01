# Pharo Datasets

[![Build status](https://github.com/pharo-ai/Datasets/workflows/CI/badge.svg)](https://github.com/pharo-ai/Datasets/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/PharoAI/Datasets/badge.svg?branch=master)](https://coveralls.io/github/PharoAI/Datasets?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PharoAI/Datasets/master/LICENSE)

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

To load a dataset, using `AIDataSets loadXYZ`. For example:

```smalltalk
AIDatasets loadBostonHousing.
AIDatasets loadBreastCancer.
AIDatasets loadWine.
AIDatasets loadDiabetes.
AIDatasets loadDigits.
AIDatasets loadMnistTest.
AIDatasets loadIris.
AIDatasets loadOldFaithful.
```

Loading a new dataset involves downloading the CSV file into the data/ directory in the local folder of your image. Then the data is read from the file and returned to you as a DataFrame object.
