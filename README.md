# "Adsorbaphores" for carbon capture from cement flue gas


## Requirements

```
mofchecker 
pandas 
git+https://github.com/kjappelbaum/MMD-critic.git
pycm 
shap
scikit-learn
fastcore
```

## Data

- `data/CIF-Files` contains the structure files of all structures we considered
- `data/Cement_Storage_UK_TSA.csv` contains the KPIs used as labels in the ML approach
- `data/features` contains the features computed using `mofdscribe`
- `data/ph_feat_new_2` contains persistence homology features computed with optimized settings

## Notebooks 

- `01_initial_model.ipynb` builds and initial classifier on a broad feature set 
- `02_prototypes.ipynb`: performs the maximum-mean discrepancy analysis
- `03_halogen_oms_significance_test.ipynb`: performs significance tests for the influence of halogens and open metal sites
