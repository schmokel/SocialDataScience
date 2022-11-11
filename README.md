Social Data Science
================ 
#### Teacher: Rasmus W. Schmøkel
#### University of Southern Denmark, Fall 2022






## Overview

- [Social Data Science](#social-data-science)
  - [Overview](#overview)
  - [Semester Plan](#semester-plan)
  - [Course Description](#course-description)
  - [Course Format](#course-format)
  - [Outcome - Knowledge, skills & Competences](#outcome---knowledge-skills--competences)
  - [Literature](#literature)
  - [Lesson #1  - Introduction to the course & Data Science as a field](#lesson-1----introduction-to-the-course--data-science-as-a-field)
  - [Lesson #2  - Programming Fundamentals](#lesson-2----programming-fundamentals)
  - [Lesson #3  - Data Science Fundamentals](#lesson-3----data-science-fundamentals)
  - [Lesson #4  - Working with API's](#lesson-4----working-with-apis)
  - [Lesson #5  - Network Analysis](#lesson-5----network-analysis)
  - [Lesson #6  - Webscraping in R](#lesson-6----webscraping-in-r)
  - [Lesson #7  - Text as data: Who says what and why?](#lesson-7----text-as-data-who-says-what-and-why)
  - [Lesson #8  - Machine Learning 1](#lesson-8----machine-learning-1)
  - [Lesson #9  - Machine Learning 2](#lesson-9----machine-learning-2)
  - [Lesson #10 - Machine Learning 3 & finale remarks](#lesson-10---machine-learning-3--finale-remarks)
  - [Bonus packs](#bonus-packs)




## Semester Plan

|Lesson|Week|Date|
|------|----|----|
|#1|37|16.09.2022|
|No lesson!|38|23.09.2022|
|No lesson!|39|30.09.2022|
|#2|40|07.10.2022|
|#3|41|14.10.2022|
|Autumn Holidays - No Lesson|42|21.10.2022|
|Annual Celebration - No lesson|43|28.10.2022|
|Lesson cancelled|44|04.11.2022|
|#4|45|11.11.2022|
|#5|46|18.11.2022|
|#6|47|25.11.2022 8-11|
|#7|47|25.11.2022 11-14|
|#8|48|02.12.2022|
|#9|49|09.12.2022|
|#10|50|16.12.2022|



## Course Description
The rapid growth in the availability and use of data has opened new and exciting possibilities for social and political research. This course equips students with the ability to conduct such research themselves. It covers the analysis of these data from data collection stage, data cleaning, and methods for analysis including network analysis, text-as-data & machine learning. The course starts with an intensive introduction to R and Rstudio. We shall learn how to import and export data, how to structure and plot data.
After this R introductory phase we move on to data collection from the web. The next elements are concerned with introduction to automated text analyses and a simple introduction to machine learning methods.
Both the public and private sector are increasingly demanding digital skills for both managers and hands-on specialists. This course will contribute to develop the new cohort of digital social scientists for the present and future labor market and academia. 
This course focuses on the analysis of data. Students should therefore be relatively familiar with quantitative research, and have a basic understanding of statistical analysis and software (e.g. Stata, R, or Python). The course is taught in R, and although students are not expected to have experience with the language prior to taking the course it is expected that students work on their programing skills outside class. An introduction to R will be provided at the beginning of the class.


## Course Format
The course will be a combination of Lessons, student presentations, and labs. Typically the lesson will start with a lecture followed by lab time and student presentations. 
During lab the students are responsible for co-creating learning.


## Outcome - Knowledge, skills & Competences
Knowledge that enables the student to:

* Understand the principles of data science and the assumptions behind select statistical methods.

* Discuss assumptions behind select data science methods

* Evaluate whether these assumptions are realistic and suggest solutions for breaches.

* Interpret results from selected statistical methods


Skills that enable students to:

* Analyze and critically assess scientific articles that use data science methods taught in the course.

* Select appropriate data science methods for own research questions.


Competences that enables students to:

* Implement data science methods using R.

* Correctly select and interpret the quantities of interest resulting from the application of these methods and link these results to research goals.



## Literature
We use variuos textbooks, journal papers and internet resources. 
Data Science (and progamming) has a wonderful open-source culture, however two of the books are not open-source. 
You can find them online or in *academic books*

* Adler(2012) *R in a nutshell* 2nd edition ISBN: 9781449312084
* 
* Gareth James, Daniela Witten, Trevor Hastie, Robert Tibshirani (2021) *“An Introduction to Statistical Learning – with applications in R*, ISBN: 9781071614174



## Lesson #1  - Introduction to the course & Data Science as a field



##### Focus
* What is Data Science?
* What distinguishes DS from other fields and professions e.g. data engineer, software developer, Robotics, statistics etc.  
* How to become a Data Scientist
* Course Walkthrough





##### Required Readings
Lazer, David, Alex Pentland, Lada Adamic, Sinan Aral, Albert-László Barabási, Devon Brewer, Nicholas Christakis, m.fl. “Computational Social Science”. Science 323, nr. 5915 (6. februar 2009): 721–23. https://doi.org/10.1126/science.1167742.

[What is Data Science](https://giventhedata.blogspot.com/2013/03/data-science-in-businesscomputational.html)

[Grimmer (2015) *We Are All Social Scientists Now: How Big Data, Machine Learning, and Causal Inference Work Together*](https://stanford.edu/~jgrimmer/bd_2.pdf)

[Sexiest job in the 21st century](https://hbr.org/2012/10/data-scientist-the-sexiest-job-of-the-21st-century)

[How to become a data scientist](https://www.mastersindatascience.org/careers/data-scientist/)


Adler (2012) *R in a nutshell* chap. 1 (Find it online or in *academic books*)


##### Optional Readings

[What is Data Science - O'Reilly](https://www.oreilly.com/radar/what-is-data-science/)
[A Very Short History of Data Science](https://www.forbes.com/sites/gilpress/2013/05/28/a-very-short-history-of-data-science/?sh=74c6956055cf)




### Lab - Getting started with R & Rstudio
 *You don't have to read these before class*


[Installing R & Rstudio](https://rstudio-education.github.io/hopr/starting.html)

[Rstudio Interface](https://bookdown.org/daniel_dauber_io/r4np_book/the-rstudio-interface.html)

[*R* Basics](https://bookdown.org/daniel_dauber_io/r4np_book/r-basics-the-very-fundamentals.html)

[Lab#1 - Getting Started with R & Rstudio.Rmd](LabMaterial/Lab%231%20-%20Getting%20Started%20with%20R%20%26%20Rstudio.Rmd)

##### Focus 
* Installing R & Rstudio
* Rstudio interface
* Setting up a project
* Simple operations




## Lesson #2  - Programming Fundamentals


##### Focus 
* Common data types
* Control flow
* Functions 
* Iterations

[Slides](LabMaterial/slides/Lesson%20%232.pptx)


##### Required Readings
Adler (2012) *R in a nutshell*, chapter 4+5+6+7+9, 2nd edition

##### Optional Readings 
[The Ultimate Beginner’s Guide to Data Types in R](https://medium.com/analytics-vidhya/the-ultimate-beginners-guide-to-data-types-in-r-ac4358985150)

Friedman (1992). “FROM BABBAGE TO BABEL AND BEYOND: A BRIEF HISTORY OF PROGRAMMING LANGUAGES”

### Lab
[Lab#2 - Programming Fundamentals.Rmd](LabMaterial/Lab%232%20-%20Programming%20Fundamentals.Rmd)



## Lesson #3  - Data Science Fundamentals

##### Focus 
* Data structures
* Load & save data
* Data Exploration & Wrangling (recode, relabel, transpose, subsetting, filtering)
* Visualization with *gpplot2*


[Slides](LabMaterial/slides/Lesson%20%233.pptx)


##### Required Readings  
[R for Data Science - chapters "Explore" & "Wrangle"](https://r4ds.had.co.nz/)

[Leeper, Thomas J. “Really Introductory Introduction to R”](https://thomasleeper.com/Rcourse/Intro2R/Intro2R.pdf)

[Zhang, Christine. “Tricks for Cleaning Your Data in R”](https://gregoryeady.com/ResearchMethodsCourse/assets/readings/Zhang,%20Christine%20-%202017%20-%20Tricks%20for%20Cleaning%20your%20Data%20in%20R.pdf)

[Wickham (2014) *tidy data*](https://vita.had.co.nz/papers/tidy-data.pdf) 



##### Optional Readings
[ggplot2 - How to make any plot in ggplot2](http://r-statistics.co/ggplot2-Tutorial-With-R.html)

[R code conventions and style guide](http://adv-r.had.co.nz/Style.html)

### Lab - Data Science Fundamentals

[Lab#3 - Data Science fundamentals.Rmd](LabMaterial/Lab%233%20-%20Data%20Science%20fundamentals.Rmd)

[wb_health_gdp.csv](LabMaterial/data/wb_health_gdp.csv)

[ppepe_semi.csv](LabMaterial/data/ppepe-master/ppepe_semi.csv)

[iris.json](LabMaterial/data/iris.json)

[Validation figure assignment 4](LabMaterial/Validation_figure_assignment4_lab3.png)

[Validation figure assignment 5](LabMaterial/Validation_figure_assignment5_lab3.png)

[Validation figure assignment 6](LabMaterial/Validation_figure_assignment6_lab3.png)



## Lesson #4  - Working with API's


##### Focus
* Data collecting using an API
* Working with JSON-data


##### Required Readings

[An introduction to API's](https://medium.com/@rwilliams_bv/apis-d389aa68104f)

[An illustrated introduction to APIs](https://medium.com/epfl-extension-school/an-illustrated-introduction-to-apis-10f8000313b9)


[Twitter: Sign up for a developer acoount BEFORE the lesson! (it may take some days to be verified)](https://developer.twitter.com/en/docs/twitter-api/getting-started/getting-access-to-the-twitter-api)

Do step 1 in the above guide. It is very important that you answer thoroughly on the questions.

[Facebook: Sign up for a developer acoount BEFORE the lesson! (takes 1-2 days to get verified)](https://www.facebook.com/ads/library/api/?source=archive-landing-page)
Do step 1 + 2 for Meta ad Library

##### Optional Readings
[rtweet: Collecting and analyzing Twitter data](https://joss.theoj.org/papers/10.21105/joss.01829.pdf)

### Lab 

[Twitter API Documentation](https://developer.twitter.com/en/docs/tutorials/getting-started-with-r-and-v2-of-the-twitter-api)

[rtweet package](https://github.com/ropensci/rtweet)

[radlibrary](https://github.com/facebookresearch/Radlibrary)

[tidyverse cheat sheet](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)



## Lesson #5  - Network Analysis


##### Focus


##### Required Readings


##### Optional Readings


### Lab 


## Lesson #6  - Webscraping in R


##### Focus


##### Required Readings


##### Optional Readings


### Lab 

## Lesson #7  - Text as data: Who say's what?


##### Focus


##### Required Readings


##### Optional Readings


### Lab 



## Lesson #8  - Machine Learning 1


##### Focus


##### Required Readings



##### Optional Readings


### Lab 



## Lesson #9  - Machine Learning 2


##### Focus


##### Required readings


##### Optional readings


### lab 


## Lesson #10 - Machine Learning 3 & finale remarks


##### Focus


##### Required Readings


##### Optional Readings


### Lab 


## Bonus packs
[Bonus Pack #1 - Version Control with git & github!](LabMaterial/Bonus_pack#1.pdf)

