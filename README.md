# HEKA Patchmaster Importer
*Class to import HEKA Patchmaster files into Matlab.* 

This repository was forked from [ChristianKeine](https://github.com/ChristianKeine/HEKA_Patchmaster_Importer) to accommodate some additional features. The main details of the importer can be found at the original repository.

## Current additional features
- Added `DataAlreadyZeroed` option in the main `HEKA_Importer` class (not the `.GUI` one). This is to accommodate the fact that some data in some versions of Patchmaster might have already been zeroed in the `.dat` files. Set it to `1` (or `true`) if you know that your data have already been zeroed (see an example [here](https://github.com/ChristianKeine/HEKA_Patchmaster_Importer/issues/8)).
