# VBiTraining
Materials for the Vectorbite Training workshops

----
The plan is to prepare [jupyter notebooks](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb) that cover the following materials (see [example here](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/NLLS.ipynb)):

* *Pre-requisites* -- what trainees should be prepared to show up with in terms of hardware, software, and preliminary knowledge (basics of R).
  - Intro to R (Samraat's notes + [try R](https://hangouts.google.com/_/elUi/chat-redirect?dest=http%3A%2F%2Ftryr.codeschool.com%2F))
  - RStudio
  - Recommendations for readings
  - jupyter
  - https://ismayc.github.io/rbasics-book/
  - https://www.datacamp.com/courses/free-introduction-to-r/?tap_a=5644-dce66f&tap_s=10907-287229
  - http://dist.stat.tamu.edu/pub/rvideos/
  - https://www.r-bloggers.com/how-to-learn-r-2/
  - Probability distributions

* *Modelling Probability, Statisics background*
  - Intro to modelling and fitting models to data - Samraat's lecture
  - Probability distributions and likelihoods, basics of bayesian statistics - Leah's notes

* *Traits*: These will use VecTraits data (Thermal performance curves and metabolic scaling)
  - Fit trait data to mechanistic and statistical models
    * Linear models / regression for simple trait models - allometric scaling data (log-log)
    * Non-linear Least Squares (NLLS) fitting in R  - compare Briere and Polynomial using AIC/BIC - TPC data from Martha
    * MLE/Bayesian fitting of simple models - to both

* *Population abundances:* These will use VecDyn data
   - Fit population dynamics models - Logistic growth (Bacteria data) 
      - NLLS
      - MLE and Bayesian
   - Fit statistical models (time series analyses) - basic AR models; time series as regression (including MLR)
      - Abundance (VecDyn) data
      - Dengue data