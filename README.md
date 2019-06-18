# The <img src="notebooks/graphics/VB_logo.jpg" alt="VBiTE Logo" width="75"> 2019 Training Workshop <!-- omit in toc --> 

## Contents <!-- omit in toc --> 

- [Schedule](#schedule)
- [The Teaching/Learning Tools and Materials](#the-teachinglearning-tools-and-materials)
  - [Hardware and Software](#hardware-and-software)
  - [Workshop content](#workshop-content)
- [Pre-work / preparation](#pre-work--preparation)

---

Welcome to the 2019 edition of the [VectorBiTE RCN](http://vectorbite.org/)'s Training workshops!

## Schedule

The Workshop will consist of lectures, practicals (where you will be guided) and challenges (where you will work more independently, but in groups, to deliver some specific results (*a la* [Hackathons](https://en.wikipedia.org/wiki/Hackathon)))).

*Training Team*: Leah Johnson (LJ); Samraat Pawar (SP): Marta Shocket (MS); Zachary Gajewski (ZG); Francis Windram (FW);  Matthew Watts (MW)); Deraj Wilson-Aggarwal (DW)

| Date                 | Time          | Topic                                      | Lead Instructor |
|:-------------------- | ------------- |:------------------------------------------ | ------ |
| Monday, 17th June    | 08:30 - 09:00 | General Intro (Including to Open Challenge) and [Setting up](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/Intro.ipynb)       | SP              |
|                      | 09:00 - 10:30 | *Practicals*: [Data, Coding](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb) and [Packages](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/tree/master/notebooks/Packages.ipynb) in R   | SP+FW      |
|                      | 10:30 - 11:30 | *Break*                                    | --              |
|                      | 11:00 - 12:00 | *Lecture*: Model Fitting ([General](https://github.com/vectorbite/VBiTraining2/blob/master/lectures/ModelFitting/)) + [Linear/Non-linear](https://github.com/vectorbite/VBiTraining2/blob/master/lectures/NLLS/))     | SP              |
|                      | 12:00 - 13:00 | *Lunch*                                    | --              |
|                      | 13:00 - 15:00 | *Practicals*: [Model Fitting & Selection](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting.ipynb) | SP+DW+ZG+FW  |
|                      | 15:00 - 15:30 | *Break*                                   | --              |
|                      | 15:30 - 16:30 | *Lecture*: [Analyses of Abundance (incl. Time Series) Data](https://github.com/vectorbite/VBiTraining2/blob/master/lectures/TimeSeries/) | SP + LJ    |
|                      | 16:30 - 17:00 | *Practicals*: [Analyses of Abundance Data](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/TimeSeries.ipynb)      | All |
| Tuesday, 18th June   | 08:30 - 09:00 | Q & A       | All             |
|                      | 09:00 - 10:30 | *Practicals*: [Analyses of Abundance Data](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/TimeSeries.ipynb)      | All             |
|                      | 10:30 - 11:00 | *Break*                               | --              |
|                      | 11:00 - 12:00 | *Lecture+Practical*: [Likelihoods](https://github.com/vectorbite/VBiTraining2/blob/master/lectures/ProbStatsIntro/) | LJ   |
|                      | 12:00 - 13:00 | *Lunch* (Start forming final hackathon teams)        | --              |
|                      | 13:00  - 14:00 | *Lecture*: [Bayesian Model Fitting](https://github.com/vectorbite/VBiTraining2/blob/master/lectures/IntroToBayes)          | LJ           |
|                      | 14:00  - 15:00 | *Practicals*: [Bayesian Model Fitting](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting.ipynb#Fitting-Models-the-Bayesian-way)          | LJ+MS+ZG           |
|                      | 15:00 - 15:30 | *Break*                             | --              |
|                      | 15:30 - 16:30 | *Practicals*: [Bayesian Model Fitting](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting.ipynb#Fitting-Models-the-Bayesian-way)       | LJ+MS+ZG         |
|                      | 16:30 - 17:00 | *Challenge*: [Traits/Abundances](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting_Challenges.ipynb)  (Intro)       | All         |
| Wednesday, 19th June | 08:30 - 09:00 | Q & A                                      | All             |
|                      | 09:00 - 10:30 | *Challenge*: [Traits/Abundances](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting_Challenges.ipynb)  (Hackathon)            | All |
|                      | 10:30 - 11:00 | *Break*                                    | --              |
|                      | 11:00 - 12:00 | *Challenge*: [Traits/Abundances](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting_Challenges.ipynb)  (Hackathon)      |              |
|                      | 12:00 - 13:00 | *Lunch* (Discuss your Open Challenge project/plan!)  | --              |
|                      | 13:00 - 13:30 | *Challenge*: Traits/Abundances  (Review; Q&A) | SP + LJ          |
|                      | 14:00 - 15:00 | [Open Challenge](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting_Challenges.ipynb) (Hackathon) | FW+DW+MS+MW+ZG          |
|                      | 15:00 - 15:30 | *Break*                                    |    --             |
|                      | 14:00 - 15:00 | [Open Challenge](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks/ModelFitting_Challenges.ipynb) (Hackathon) | FW+DW+MS+MW+ZG          |
|                      | 15:30 - 17:00| [Open Challenge]() (Hackathon*)|  FW+DW+MS+MW+ZG          |

*Presentation the next day - see [main workshop schedule](./VBiTE2019InfoPack.pdf).

## The Teaching/Learning Tools and Materials

### Hardware and Software

Please bring a laptop. We will be using `R` for all data manipulation and analyses/model fitting. Any operating system (Windows, Mac, Linux) will do, as long as you have `R` (version 3.2 or higher) installed. 

You may use any IDE/ [GUI](https://en.wikipedia.org/wiki/Graphical_user_interface) for `R` (VScode, RStudio, Emacs, etc). For most people, [RStudio](https://www.rstudio.com/) is a good option. Whichever one you decide to use, please make sure it is installed and test it before the workshop. We have budgeted 30 min at the start of Day 1 in case there are any hardware/software issues.

### Workshop content

All the teaching materials, including the lectures, jupyter notebooks (practicals + challenges), code, and data are at [this git repository](https://github.com/vectorbite/VBiTraining2).

The practicals have been written as [Jupyter notebooks](https://jupyter.org/), and can viewed [here](https://nbviewer.jupyter.org/github/vectorbite/VBiTraining2/blob/master/notebooks). Click on any of the `.ipynb` files, starting with the `Intro.ipynb`.

If you would like to use jupyter notebooks yourself (not required for the workshop), have a look at [this](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/Appendix-JupyIntro.ipynb). Or something else online (google "jupyter") &ndash; lots of installation and beginner user guides on the web.

## Pre-work / preparation

We are assuming familarity with `R` basics. In addition, we recommend that you do the following: 

1. Go to [The Multilingual Quantitative Biologist](https://mhasoba.github.io/TheMulQuaBio/), and read+work through the [Intro R Chapter](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb) up to the section on [Writing R code](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb#Writing-R-code). Of course, keep going if you want (there is [another chapter, on data in R](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/08-Data_R.ipynb), parts of which we will actually cover in the Workshop on Day 1 (see schedule above)). In particular, you might want to have a look at [ggplot](http://ggplot.yhathq.com/). There is a section on this in the [data in R chapter](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/08-Data_R.ipynb). 
   * In addition / alternatively to pre-work element (1), here are some resources for brushing up on `R` at the end of the [Intro R Chapter](https://nbviewer.jupyter.org/github/mhasoba/TheMulQuaBio/blob/master/notebooks/07-R.ipynb) you can try.
But there are many more resources online (e.g., [this](https://kingaa.github.io/R_Tutorial/) and [this](https://www.pluralsight.com/search?q=R) ) -- pick something that suits your learning style).

2. [Probability and stats review](https://github.com/vectorbite/VBiTraining2/blob/master/old_materials/VB_stats_review.pdf)

3. Inculcate the coding Jedi inside of you - or the Sith - whatever works.