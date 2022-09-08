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
  - [Literature](#literature)
  - [Lesson #1  - Introduction to the course & Data Science as a field](#lesson-1----introduction-to-the-course--data-science-as-a-field)
  - [Lesson #2  - Programming Fundamentals](#lesson-2----programming-fundamentals)
  - [Lesson #3  - Data Science Fundamentals](#lesson-3----data-science-fundamentals)
  - [Lesson #4  - Working with API's](#lesson-4----working-with-apis)
  - [Lesson #5  - Network Analysis](#lesson-5----network-analysis)
  - [Lesson #6  - Webscraping in R](#lesson-6----webscraping-in-r)
  - [Lesson #7  - Text as data: Who say's what?](#lesson-7----text-as-data-who-says-what)
  - [Lesson #8  - Machine Learning 1](#lesson-8----machine-learning-1)
  - [Lesson #9  - Machine Learning 2](#lesson-9----machine-learning-2)
  - [Lesson #10 - Machine Learning 3 & finale remarks](#lesson-10---machine-learning-3--finale-remarks)




## Semester Plan

|Lesson|Week|Date|
|------|----|----|
|#1|37|16.09.2022|
|#2|38|23.09.2022|
|No lesson!|39|30.09.2022|
|#3|40|07.10.2022|
|#4|41|14.10.2022|
|Autumn Holidays - No Lesson|42|21.10.2022|
|Annual Celebration - No lesson|43|28.10.2022|
|#5|44|04.11.2022|
|#6|45|11.11.2022|
|#7|46|18.11.2022|
|#8|47|25.11.2022|
|#9|48|02.12.2022|
|#10|49|09.12.2022|



## Course Description
The rapid growth in the use of social media and the availability of data to analyze it has opened new and exciting possibilities for social and political research. To equip students with the ability to conduct such research themselves, this course introduces the analysis of online and social media data. It covers the analysis of these data from the research design stage through to data collection, data cleaning, and methods for analysis. The course thus takes a hands-on approach to conduct empirical research to answer some of the big questions in social media research. Students will become familiar with the many research designs both big data studies, quasi-experiments and experiments in an online context and methods available for conducting social media research; learn to be critical of existing methods and research designs and develop the technical skills to conduct such research themselves. The course will thereby provide the students with skills to answer their own research question of interest in an online context. Furthermore, both the public and private sector are increasingly demanding digital skills for both managers and hands-on specialists. This course will contribute to develop the new cohort of digital political scientist for the present and future labor market 
This course focuses on the analysis of data. Students should therefore be relatively familiar with quantitative research, and have a basic understanding of statistical analysis and software (e.g. Stata, R, or Python). The course is taught in R or Python, although students are not expected to have experience with the language prior to taking the course. An introduction to R or python will be provided at the beginning of the class.
The course will be a combination of Lessons, student presentations, and labs.

## Course Format

## Literature
We will cover this in the first lesson - don't buy anything in advance



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


adler (2012) *R in a nutshell* chap. 1 (Find it online or in *academic books*)


##### Optional Readings

[What is Data Science - O'Reilly](https://www.oreilly.com/radar/what-is-data-science/)
[A Very Short History of Data Science](https://www.forbes.com/sites/gilpress/2013/05/28/a-very-short-history-of-data-science/?sh=74c6956055cf)




### Lab - Getting started with R & Rstudio
 *You don't have to read these before class*


[Installing R & Rstudio](https://rstudio-education.github.io/hopr/starting.html)
[Rstudio Interface](https://bookdown.org/daniel_dauber_io/r4np_book/the-rstudio-interface.html)
[*R* Basics](https://bookdown.org/daniel_dauber_io/r4np_book/r-basics-the-very-fundamentals.html)

[Lab#1 - Getting Started with R & Rstudio.Rmd](https://raw.githubusercontent.com/schmokel/SocialDataScience/pages/LabMaterial/Lab%231%20-%20Getting%20Started%20with%20R%20%26%20Rstudio.Rmd)

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


##### Required Readings
Adler (2012) *R in a nutshell*, chapter 4+5+6+7+9, 2nd edition

##### Optional Readings 
[The Ultimate Beginner’s Guide to Data Types in R](https://medium.com/analytics-vidhya/the-ultimate-beginners-guide-to-data-types-in-r-ac4358985150)

Friedman, Linda Weiser. “FROM BABBAGE TO BABEL AND BEYOND: A BRIEF HISTORY OF PROGRAMMING LANGUAGES”, u.å., 17.

### Lab
[Lab#2 - Programming Fundamentals.Rmd](https://raw.githubusercontent.com/schmokel/SocialDataScience/pages/LabMaterial/Lab%232%20-%20Programming%20Fundamentals.Rmd)



## Lesson #3  - Data Science Fundamentals

##### Focus 
* Data structures
* Load & save data
* Data Exploration
* Wrangle (recode, relabel, transpose, data, subsetting, filtering)
* Vizualisations with *gpplot2*


##### Required Readings  
[R for Data Science - chapters "Explore" & "Wrangle"](https://r4ds.had.co.nz/)

[Leeper, Thomas J. “Really Introductory Introduction to R”](https://thomasleeper.com/Rcourse/Intro2R/Intro2R.pdf)

[Zhang, Christine. “Tricks for Cleaning Your Data in R”](https://gregoryeady.com/ResearchMethodsCourse/assets/readings/Zhang,%20Christine%20-%202017%20-%20Tricks%20for%20Cleaning%20your%20Data%20in%20R.pdf)

[Wickham (2014) *tidy data*](https://vita.had.co.nz/papers/tidy-data.pdf) 



##### Optional Readings
[ggplot2 - How to make any plot in ggplot2](http://r-statistics.co/ggplot2-Tutorial-With-R.html)

### Lab - Data Science Fundamentals

[Lab#3 - Data Science fundamentals.Rmd](https://raw.githubusercontent.com/schmokel/SocialDataScience/pages/LabMaterial/Lab%233%20-%20Data%20Science%20fundamentals.Rmd)

[wb_health_gdp.csv](https://raw.githubusercontent.com/schmokel/SocialDataScience/pages/LabMaterial/data/wb_health_gdp.csv)

[ppepe_semi.csv](https://raw.githubusercontent.com/schmokel/SocialDataScience/pages/LabMaterial/data/ppepe-master/ppepe_semi.csv)


## Lesson #4  - Working with API's


##### Focus
* Data collecting using an API
* Working with JSON-data


##### Required readings


##### Optional readings


### lab 




## Lecture #5  - Network analysis

Analyze ties based on lecture #4

##### Focus


##### Required readings


##### Optional readings


### lab 


## Lecture #6  - Webscraping in R


##### Focus


##### Required readings


##### Optional readings


### lab 

## Lecture #7  - Text as data: Who say's what?


##### Focus


##### Required readings

##### Optional readings


### lab 


## Lecture #8  - Machine Learning 1


##### Focus


##### Required readings


##### Optional readings


### lab 



## Lecture #9  - Machine learning 2


##### Focus


##### Required readings


##### Optional readings


### lab 


## Lecture #10 - Machine Learning 3 & final remarks


##### Focus


##### Required readings


##### Optional readings


### lab 

