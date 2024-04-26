<<dd_version: 2>>     
<<dd_include: header.txt>>




# Homework 4 .html  

### Kristen Chen, MHS

**Background:** 
A <u>user</u> downloads and installs a <u>system</u> of program files, mostly ado-files, which form the foundation of most of the commands 
used in Stata Programming. Using those commands and additional syntax written out sequentially in a do-file, the user creates 
well-formed instruction to Stata called a do-file script. Once the user runs this script, results are generated and displayed
in the results window, in a graph, or in a format (`.xlsx`, `.log`, `.dta`, `.docx`, `.md`, `LaTeX`, `.html`, etc). The `.html` file format is of specific 
interest since its the pathway to self-publication. To illustrate how this may be achieved in Stata, we hereby introduce the `dyndoc`
command. 

**Methods:** 
This is a simulated dataset. This simulation drew values for age from both normal distribution and t-distribution. There are 30 observations in total. 
Distribution graph is shown below.In the simulation data, the age variable is generated according to a normal distribution, specifically:**
Age, years</sub> ~ N(&mu; = 57, &sigma;<sup>2</sup> = 225)

```'''
<<dd_do:nooutput>>
clear all
set obs 30
gen age = (rnormal() * 15) + 57
gen age_t = (rt(_N) * 15) + 57

* Plot a histogram of the age variables from both rnormal() and rt(), and overlay it with a theoretical normal distribution curve. 
        hist age, ///
   fcolor(orange%40) /// simulated normal 
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   normal /// theoretical normal
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  )

graph export "hw4_hist.png", replace
<</dd_do>>
```
<<dd_graph>>


**Result**
In the simulation data, the age variable is generated according to a normal distribution, specifically:**
Distribution of Age, years</sub> ~ N(&mu; = 57, &sigma;<sup>2</sup> = 225)
