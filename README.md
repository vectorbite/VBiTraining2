# VBiTraining
Materials for the Vectorbite Training workshops

----
The plan is to prepare [jupyter notebooks ](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb) that cover the following materials (see [example here](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/NLLS.ipynb)):


* *Pre-requisites* -- what trainees should be prepared to show up with in terms of hardware, software, and preliminary knowledge (basics of R).

* *Probability, Statisics, and R background* - two tracks (beginner and intermediate/advanced)
  - Intro to modelling and fitting models to data (b/a)
  - Intro to R (b)
  - Probability distributions and likelihoods (b/a)
  - Basics of Bayesian Statistics using JAGS (a)
  
* *Traits*: These will use VecTraits data (Thermal performance curves and metabolic scaling)
  - Fit trait data to mechanistic and statistical models
    * linear models/regression for simple trait models (a) - metabolic scaling data (log-log)
    * Non-linear Least Squares (NLLS) fitting in R (b/a)  - compare Briere and Polynomial using AIC/BIC? 
    * MLE/Bayesian fitting of simple models (b/a)

* *Population abundances:* These will use VecDyn data
  - Fit statistical models (time series analyses) - basic AR models; time series as regression (including MLR) (b/a)
  - Fit population dynamics models - Logistic equation
    * NLLS
    * MLE and Bayesian methods (a)