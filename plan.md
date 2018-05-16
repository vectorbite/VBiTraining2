# VBiTraining Plan
----
<!-- TOC -->

- [VBiTraining Plan](#vbitraining-plan)
  - [Instructions](#instructions)
  - [Workshop Plan/Outline](#workshop-plan-outline)

<!-- /TOC -->

## Instructions

* Please add your files to `lectures`, `notebooks`, `code`, or `data` directories, as needed; all workshop sessions will share these directories  
* If you want to share old materials taht will be up-cycled to the current workshop, please put them in the `old_materials` directory, under a subdirectory
  * Each of these should ideally include working examples, each with its own code and data etc directories as needed/appropriate.
* If there are Readings (papers, reports, etc) or Resources (cheat-sheets, etc) put them in those named directories at the same level as `code`, `data`, etc. 
* We are using R. Minimize from using too many special packages, unless you want to teach how to use them.
* We will be using Jupyter, but you may include the training material as an R-MarkDown file (`.Rmd`), outputting a pdf, which we will covert to jupyter.
* Start each discrete session/tutorial by stating its goal and pre-requisites (including packages needed), all under a clear *Introduction* section. 

* In each session, try to include a few small exercises. These give breathing space, allowing people to catch up, and reinforce their understanding.

* each session will with more substantial exercises that the students will solve in groups in a hackathon format (these will be used in the challenge/exercise sessions), listed in  in the [Schedule](https://github.com/vectorbite/VBiTraining/blob/master/README.md).  We have budgeted 1-2 hrs for each of these followed by a discussion.

## Workshop Plan/Outline

The plan is to prepare lectures and  [jupyter notebooks](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb) that cover the following materials (see [example here](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/NLLS.ipynb)):

* *Modelling, Probability, Statisics background*
  - Intro to data management and basics of visualization - Samraat
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