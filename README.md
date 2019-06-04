# The VectorBiTE 2019 Training Workshop <!-- omit in toc --> 

<img src="notebooks/graphics/VB_logo.jpg" alt="VBiTE Logo" width="75">

## Contents <!-- omit in toc --> 

- [Schedule](#schedule)
- [The Teaching/Learning Tools and Materials](#the-teachinglearning-tools-and-materials)
  - [Hardware and Software](#hardware-and-software)
  - [Workshop content](#workshop-content)
- [Pre-work / preparation](#pre-work--preparation)

---
## Schedule

*Training Team*: Leah Johnson (LJ); Samraat Pawar (SP): Marta Shocket (MS); Francis Windram (FW);  Matthew Watts (MW)); Deraj Wilson-Aggarwal (DW)

| Date                 | Time          | Topic                                      | Lead Instructor |
|:-------------------- | ------------- |:------------------------------------------ | --------------- |
| Monday, 17th June    | 08:30 - 09:00 | General Intro and Setting up               | SP              |
|                      | 09:00 - 10:30 | Workshop: Handling Data, and Visualization in R       | SP+FW      |
|                      | 10:30 - 11:00 | *Break*                                    | --              |
|                      | 11:00 - 12:00 | Lecture: Intro to Model Fitting            | SP              |
|                      | 12:00 - 13:00 | *Lunch*                                    | --              |
|                      | 13:00 - 15:00 | Workshop: Linear and Non-Linear Least Squares (NLLS) Model Fitting| SP+DW+FW  |
|                      | 15:00 - 15:30 | *Break*                                    | --              |
|                      | 15:30 - 16:30 | Workshop: Model Selection     | SP+DW+FW  |
|                      | 16:30 - 17:00 | Intro to Traits (VecTraits)) / Abundances (VecDyn) Challenge     | SP+DW+FW  |
| Tuesday, 18th June   | 08:30 - 10:00 | Traits (VecTraits)) / Abundances (VecDyn) Challenge       | All             |
|                      | 10:30 - 11:00 | Traits/Abundances Challenge Discussion           | --              |
|                      | 10:30 - 11:00 | *Break*                                    | --              |
|                      | 11:00 - 12:00 | Workshop: Maximum-Likelihood Model Fitting | LJ+MS |
|                      | 12:00 - 13:00 | *Lunch* (Start forming groups for Day 3 challenge)        | --              |
|                      | 13:00 - 14:00 | Workshop: Maximum-Likelihood Model Fitting | LJ + MS          |
|                      | 14:00 - 15:00 | Lecture: Bayesian Model Fitting         | LJ              |
|                      | 15:00 - 15:30 | *Break*                                    | --              |
|                      | 15:30 - 17:00 | Workshop: Bayesian Model Fitting       | LJ+MS         |
| Wednesday, 19th June | 08:30 - 09:00 | Q & A                                      | All             |
|                      | 09:00 - 10:30 | Workshop: Bayesian Model Fitting            | LJ+MS      |
|                      | 10:30 - 11:00 | *Break*                                    | --              |
|                      | 11:00 - 12:00 | Coding Practices (Coding reproducible analyses)      | FW+SP+DW             |
|                      | 12:00 - 13:00 | *Lunch* (Discuss your group Hackathon project/plan!)  | --              |
|                      | 13:00 - 15:00 | Package Design / Model Fitting Hackathon | FW+DW+MS+MW          |
|                      | 15:00 - 15:30 | *Break*                                    |    --             |
|                      | 15:30 - 17:00| Package Design / Model Fitting Hackathon*|  FW+DW+MS+MW          |

*Presentation the next day - see main workshop schedule

All the teaching materials, including the lectures, jupyter notebooks, code, and data are at [this git repository](https://github.com/vectorbite/VBiTraining2).

## The Teaching/Learning Tools and Materials

### Hardware and Software

Please bring a laptop. We will be using `R` for all data manipulation and analyses/model fitting. Any operating system (Windows, Mac, Linux) will do, as long as you have `R` (version 3.2 or higher) installed. 

You may use any IDE/ [GUI](https://en.wikipedia.org/wiki/Graphical_user_interface) for `R` (VScode, RStudio, Emacs, etc). For most people, [RStudio](https://www.rstudio.com/) is a good option . Whichever one you decide to use, please make sure it is installed and test it before the workshop. We have budgeted 30 min at the start of Day 1 in case there are any hardware/software issues.

### Workshop content

The materials will be delivered through lectures and [Jupyter notebooks](https://jupyter.org/). If you would like to use jupyter (not required for the workshop), have a look at [this](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/Appendix-JupyIntro.ipynb) (or something else online - lots of installation and beginner user gudes on the web).

## Pre-work / preparation

We are assuming familarity with `R` basics. In addition, we recommend that you do the following: 

1. Go to [The Multilingual Quantitative Biologist](https://mhasoba.github.io/TheMulQuaBio/), and read+work through the [Intro R Chapter](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb) upto the section on [Writing R code](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb#Writing-R-code). Of course, keep going if you want (there is [another chapter, on data in R](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/08-Data_R.ipynb), parts of which we will actually cover in the Workshop on Day 1 (see schedule above)). A good bit of the training will focus on data visualization. In particular, you might want to have a look at [ggplot](http://ggplot.yhathq.com/). There is a section on this in the [data in R chapter](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/08-Data_R.ipynb). 
   * In addition / alternatively to pre-work element (1), here are some resources for brushing up on `R` at the end of the [Intro R Chapter](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb) you can try.
But there are many more resources online (e.g., [this](https://kingaa.github.io/R_Tutorial/) and [this](https://www.pluralsight.com/search?q=R) ) -- pick something that suits your learning style). 

2. Probabilty and stats review: https://github.com/vectorbite/VBiTraining2/blob/master/old_materials/VB_stats_review.pdf  

3. Inculcate the coding Jedi inside of you - or the Sith - whatever works.