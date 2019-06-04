# Plan: for Instructors

The overall plan is to prepare lectures and  [jupyter notebooks](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/Appendix-JupyIntro.ipynb) (also lots of installation and beginner user guides on the web), covering the following topics (see [example here](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/NLLS.ipynb)):

* *Analysis, Modelling, Probability, Statistics background*
  - Intro to data management and basics of visualization
  - Intro to modelling and fitting models to data
  - Probability distributions and likelihoods, basics of Bayesian stats

* *Traits*: Use VecTraits data (Thermal performance curves and metabolic scaling)
  - Fit trait data to mathematical models
    * Linear models / regression for simple trait models - allometric scaling data (log-log)
    * Non-linear Least Squares (NLLS) fitting in R  - compare models (e.g., Briere and Polynomial using AIC/BIC)
    * MLE/Bayesian fitting of simple models - to both

* *Population abundances:* Use VecDyn data
   - Fit population dynamics models - Logistic growth (Bacteria data)
      - NLLS
      - MLE and Bayesian
   - Fit statistical models (time series analyses) - basic AR models; time series as regression (including MLE)
      - Abundance (VecDyn) data
      - Dengue data

Each session will have exercises that the students solve in groups, getting used to a a 'hackathon' format along the way. These will more extended challenges as well where students will work in groups towards delivering some outcome (an analysis including code), followed by a discussion (and a presentation on the last day).

## General instructions

* Please add your files to `lectures`, `notebooks`, `code`, or `data` directories, as needed; all workshop sessions will share these directories
* We are using R. Minimize using too many special packages, unless you want to teach how to use them.
* We will be using [jupyter](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb), but you may include the training material as an R-MarkDown file (`.Rmd`), outputting a pdf, which we will covert to jupyter.
* If you want to share old materials that will be up-cycled to the current workshop, please put them in the `old_materials` directory, under a subdirectory (e.g., and RMarkdown files)
* Each of these should ideally include working examples, each with its own code and data etc directories as needed/appropriate.
* If there are Readings (papers, reports, etc) or Resources (cheat-sheets, etc) put them in those respective directories,available at the same level as `code`, `data`, etc.
* Start each discrete session/tutorial by stating its goal and pre-requisites (including packages needed), all under a clear *Introduction* section.
* In each session, try to include a few small exercises. These give breathing space, allowing people to catch up, and reinforce their understanding.

---
## TODOS

* Update readings
* Basics or probability pre-work 