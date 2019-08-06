# Pharo DataSet
[![Build Status](https://api.travis-ci.com/AtharvaKhare/DataSet.svg?branch=master)](https://travis-ci.com/AtharvaKhare/DataSet)

DataSet library is used to load toy datasets in Pharo. The datasets are loaded as [DataFrame](https://github.com/PolyMathOrg/DataFrame/) objects.


## Installation
To install DataSet, go to the Playground (`Ctrl+OW`) in your fresh Pharo image and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```smalltalk
Metacello new
  baseline: 'DataSet';
  repository: 'github://AtharvaKhare/DataSet';
  load.
```

## Usage
To see all the available datasets, use `DataSet availableDataSets`.

To load a dataset, using `DataSet loadXYZ`. For example:
```
df := DataSet loadBoston.
```

Loading a new dataset involves downloading it's csv to local filesystem followed by reading it in DataFrame. You can preemptively download datasets by:
```
"Downloads a single dataset"
DataSet downloadBoston.

"Downloads all datasets"
DataSet downloadAll.
```
This command skips downloading if dataset already exists. DataSets are stored in `data` folder of this repo in your filesystem.
