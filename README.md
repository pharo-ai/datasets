# Pharo DataSet
[![Build Status](https://travis-ci.org/PharoAI/Datasets.svg?branch=master)](https://travis-ci.org/PharoAI/Datasets)

DataSet library is used to load toy datasets in Pharo. The datasets are loaded as [DataFrame](https://github.com/PolyMathOrg/DataFrame/) objects.


## Installation
To install `Datasets`, go to the Playground (`Ctrl+OW`) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```smalltalk
Metacello new
  baseline: 'DataSet';
  repository: 'github://PharoAI/Datasets';
  load.
```

## Usage
To see all the available datasets, use `DataSet availableDataSets`.

To load a dataset, using `Datasets loadXYZ`. For example:
```
df := Datasets loadBoston.
```

Loading a new dataset involves downloading it's csv to local filesystem followed by reading it in DataFrame. You can preemptively download datasets by:
```
"Downloads a single dataset"
Datasets downloadBoston.

"Downloads all datasets"
Datasets downloadAll.
```
This command skips downloading if dataset already exists. Datasets are stored in `data` folder of this repo in your filesystem.
