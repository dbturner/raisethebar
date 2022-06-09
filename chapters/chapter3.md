---
title: 'Chapter 3: Practice Making Different Kinds of Graphs in R'
description:
  'This chapter will use template code to help you learn how to make different kinds of graphs using the ggplot2 package in R.'
prev: /chapter2
next: null
type: chapter
id: 3
---

<exercise id="1" title="Bar Graphs">

In Chapter 1 we went over why bar graphs are misleading. However, it is still useful to know how to make them even if it is just to make an example to demonstrate what not to do.

Let's start with making a bar graph of mussel length for each river. In the code chunk below, replace the blanks as instructed in the comments using `length` for the numerical variable and `location` for the categorical variable. For the axis labels use "Mussel Length (cm)" and "Location" as the respective labels.

Once you fill in the blanks, click the "Run Code" button to make sure the code works. 

<codeblock id="03_01">

Make sure you put `location` in for the categorical variable and `length` for the numerical variable. You must spell each variable name exactly right with no capital letters. The ylab and xlab functions are the only places where you can make the words on the axis labels look however you want (these are just labels - they are not referencing anything in your data). You can click "Show solution" to see the answer if you get stuck, or click "Reset" if you want to start over.

</codeblock>

Below is the code used to make the bar graph in Chapter 1 to give you a starting point with a 2 factor example (when there are two categorical grouping variables). Don't worry about a solution here, just play around with the code and see what happens. 

* Try changing what is filtered for and see what happens. For example:
  - replace "A" with "D" to see what the lengths of the dead mussels are, 
  - change "Summer" to "Fall", 
  - change the years shown (change `year != "2015"` to `year == "2019"`)

* Try changing the categorical variables and see what that does. For example, 
  - change the code so there is only one factor (change to just `year` or `location` - make sure to make the `x` and `fill` match when using just one factor, and change the xlim to `xlim = c(0.5, 4.5)` if just using year as a factor),
  - remove the season part in the `filter` function (delete `season == "Summer",`) and use `season` instead of `year`

* Change the various values (width, size, ylim, xlim, base_size) to see what they do

<codeblock id="03_02">

click "Reset" if you want to start over with the original code.

</codeblock>

- You can learn more about how to use the `filter` function here: [Filter rows with filter()](https://r4ds.had.co.nz/transform.html#filter-rows-with-filter)
- While bar graphs are not great for continuous data, they CAN be used for counts and percentages. For a great resource on making nice looking bar graphs see [A QUICK HOW-TO ON LABELLING BAR GRAPHS IN GGPLOT2](https://www.cedricscherer.com/2021/07/05/a-quick-how-to-on-labelling-bar-graphs-in-ggplot2/)

</exercise>

<exercise id="2" title="Box plots">

In this section, we will practice making box plots

Let's start with making a box plot of mussel length for each river. In the code chunk below, replace the blanks as instructed in the comments using `mussels`, `length` and `location` for the blanks as appropriate. For the axis labels use "Mussel Length (cm)" and "Location". Think about which of these things is the data frame, the continuous numerical variable, and the categorical variable. Which axis should each variable go on?

Once you fill in the blanks, click the "Run Code" button to make sure the code works. 

<codeblock id="03_03">

Make sure you put `mussels` for the data frame, `location` for the categorical variable, and `length` for the numerical variable. You must spell each name exactly right with no capital letters. The ylab and xlab functions are the only places where you can make the words on the axis labels look however you want (these are just labels - they are not referencing anything in your data). You can click "Show solution" to see the answer if you get stuck, or click "Reset" if you want to start over.

</codeblock>

Below is the code used to make the box plot in Chapter 1 to give you a starting point with a 2 factor example (when there are two categorical grouping variables). Don't worry about a solution here, just play around with the code and see what happens. 

* Try changing what is filtered for and see what happens. For example:
  - replace "A" with "D" to see what the lengths of the dead mussels are, 
  - change "Summer" to "Fall", 
  - change the years shown (change `year != "2015"` to `year == "2019"`)

* Try changing the categorical variables and see what that does. For example, 
  - change the code so there is only one factor (change to just `year` or `location` - make sure to make the `x` and `fill` match when using just one factor, and change the xlim to `xlim = c(0.5, 4.5)` if just using year as a factor),
  - remove the season part in the `filter` function (delete `season == "Summer",`) and use `season` instead of `year`

* Change the various values (width, alpha, ylim, xlim, base_size) to see what they do

<codeblock id="03_04">

click "Reset" if you want to start over with the original code.

</codeblock>

- You can learn more about how to use the `filter` function here: [Filter rows with filter()](https://r4ds.had.co.nz/transform.html#filter-rows-with-filter)
- [The boxplot and its pitfalls](https://www.data-to-viz.com/caveat/boxplot.html): a good overview of box plots
- [R Graph Gallery - Boxplot](https://r-graph-gallery.com/boxplot): lots of example box plots

</exercise>
