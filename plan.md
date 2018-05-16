# VBiTraining Plan
----

The plan is to prepare lectures and  [jupyter notebooks](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb) that cover the following materials (see [example here](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/NLLS.ipynb)):

* *Modelling, Probability, Statisics background*
  - Intro to modelling and fitting models to data - Samraat
  - Probability distributions and likelihoods, basics of bayesian statistics - Leah

* *Traits*: Use VecTraits data (Thermal performance curves and metabolic scaling)
  - Fit trait data to mechanistic and statistical models
    * Linear models / regression for simple trait models - allometric scaling data (log-log)
    * Non-linear Least Squares (NLLS) fitting in R  - compare Briere and Polynomial using AIC/BIC - TPC data from Martha
    * MLE/Bayesian fitting of simple models - to both

* *Population abundances:* Use VecDyn data
   - Fit population dynamics models - Logistic growth (Bacteria data) 
      - NLLS
      - MLE and Bayesian
   - Fit statistical models (time series analyses) - basic AR models; time series as regression (including MLE)
      - Abundance (VecDyn) data
      - Dengue data