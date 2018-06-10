# The VectorBiTE Training Workshop materials

<img src="notebooks/graphics/VB_logo.jpg" alt="VBiTE Logo" width="75"> 

<!-- TOC -->

- [The VectorBiTE Training Workshop materials](#the-vectorbite-training-workshop-materials)
    - [Schedule](#schedule)
    - [The Teaching Tools](#the-teaching-tools)
    - [How to prepare for the Workshop](#how-to-prepare-for-the-workshop)
- [For Instructors](#for-instructors)
    - [General instructions](#general-instructions)
    - [Planned Topics](#planned-topics)

<!-- /TOC -->

## Schedule

(Training Team: Leah Johnson (LJ); Samraat Pawar (SP): Marta Shocket (MS); Fadoua El Moustaid (FE);  Matthew Watts (MW))

| Date                | Time         | Topic                                 |Lead Instructor
|:------              |------        |:------                                |------
|Monday, 11th June    | 08:30 - 09:00| General Intro and Setting up          | SP 
|                     | 09:00 - 10:30| Data principles/wrangling             | SP
|                     | 10:30 - 11:00| *Break*                               | --
|                     | 11:00 - 12:00| Intro to Model Fitting Lecture        | SP
|                     | 12:00 - 13:00| *Lunch*                               | --
|                     | 13:00 --14:00| Principles: Probability, Likelihood   | LJ
|                     | 14:00 --15:00| Intro to Bayesian Methods             | LJ
|                     | 15:00 --15:30| *Break*                               | --
|                     | 15:30 --17:00| Traits: Linear Models + NLLS + MLE    | SP
|                     | 17:00 --17:30| Intro to challenge/exercise           | SP
|Tuesday, 12th June   | 08:30 - 09:00| Q & A                                 | All
|                     | 09:00 - 10:30| Traits: (Group) challenge/exercise*   | MS-FE-MW
|                     | 10:30 - 11:00| *Break*                               | --
|                     | 11:00 - 12:00| Traits: (Group) challenge discussion  | All
|                     | 12:00 - 13:00| *Lunch*                               | --
|                     | 13:00 - 14:00| Abundance/Incidence: Time series      | LJ
|                     | 14:00 --15:00| A/I:  Linear Models + NLLS + MLE      | SP
|                     | 15:00 --15:30| *Break*                               | --
|                     | 15:30 --17:00| Basics of Bayesian Analyses with JAGS | LJ
|                     | 17:00 --17:30| Intro to challenge/exercise           | LJ
|Wednesday, 13th June | 08:30 - 09:00| Q & A                                 | All
|                     | 09:00 - 10:30| A/I: (Group) challenge/exercise*      | MS-FE-MW
|                     | 10:30 - 11:00| *Break*                               | --
|                     | 11:00 - 12:00| A/I: (Group) challenge discussion     | All
|                     | 12:00 - 13:00| *Lunch*                               | --
|                     | 13:00 --15:00| Working Group Preliminaries           | 
|                     | 15:00 --15:30| *Break*                               | 
|                     | 15:30 --17:30| Registration/socializing for open session  | 

*These will involve model fitting/selection

All the teaching materials, including the lectures, jupter notebooks, code, and data are at [this git repository](https://github.com/vectorbite/VBiTraining).

## The Teaching Tools

We will be using `R`. The materials will be delivered through lectures and [Jupyter notebooks](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining/blob/master/notebooks/Index.ipynb). If you would like to use jupyter (not required for the workshop), have a look at this [Intro to Jupyter notebooks](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb), or something else online.

## How to prepare for the Workshop

 * We are assuming familarity with `R` basics. Here are some resources for brushing up (and there are many more online -- pick something that suits your learning style):
     - [Samraat's notes](https://github.com/mhasoba/TheMulQuaBio/blob/master/silbiocomp/SilBioComp.pdf) - The Intro to R Chapter, but more if you want
     - [try R](https://hangouts.google.com/_/elUi/chat-redirect?dest=http%3A%2F%2Ftryr.codeschool.com%2F)
     - https://ismayc.github.io/rbasics-book/
     - https://www.datacamp.com/courses/free-introduction-to-r/?tap_a=5644-dce66f&tap_s=10907-287229
     - https://kingaa.github.io/R_Tutorial/

A good bit of the traing will focus on data visualization. In particular, you might want to have a look at [ggplot](http://ggplot.yhathq.com/). There is a section on this in the [Workshop notes](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining/blob/master/notebooks/Index.ipynb),  but plenty of other online resources are available --- just google ggplot!

  * Bring your laptop. Any operating system/platform will do.
  
  * Have R (version 3.2 or higher) installed.
  
  * Have some code editor installed. [RStudio](https://www.rstudio.com/) is a great option, as it is a good code editor + a inuitive [GUI](https://en.wikipedia.org/wiki/Graphical_user_interface).
  
  * Inculcate the coding Jedi inside of you - or the Sith - whatever works.

# For Instructors

## General instructions

* Please add your files to `lectures`, `notebooks`, `code`, or `data` directories, as needed; all workshop sessions will share these directories  
* If you want to share old materials taht will be up-cycled to the current workshop, please put them in the `old_materials` directory, under a subdirectory
  * Each of these should ideally include working examples, each with its own code and data etc directories as needed/appropriate.
* If there are Readings (papers, reports, etc) or Resources (cheat-sheets, etc) put them in those named directories at the same level as `code`, `data`, etc. 
* We are using R. Minimize from using too many special packages, unless you want to teach how to use them.
* We will be using [jupyter](https://github.com/mhasoba/TheMulQuaBio/blob/master/notebooks/Intro.ipynb), but you may include the training material as an R-MarkDown file (`.Rmd`), outputting a pdf, which we will covert to jupyter.
* Start each discrete session/tutorial by stating its goal and pre-requisites (including packages needed), all under a clear *Introduction* section. 

* In each session, try to include a few small exercises. These give breathing space, allowing people to catch up, and reinforce their understanding.

* each session will with more substantial exercises that the students will solve in groups in a hackathon format (these will be used in the challenge/exercise sessions), listed in  in the [Schedule](https://github.com/vectorbite/VBiTraining/blob/master/README.md).  We have budgeted 1-2 hrs for each of these followed by a discussion.

## Planned Topics

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