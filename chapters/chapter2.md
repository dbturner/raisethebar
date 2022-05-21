---
title: 'Chapter 2: Getting Started Making Graphs in R'
description:
  'This chapter will use template code to help you learn how to make a dot plot using the ggplot2 package in R.'
prev: /chapter1
next: null
type: chapter
id: 2
---

<exercise id="1" title="Getting Started with Graphing in R" type="slides">

<slides source="chapter2_01_start">
</slides>

</exercise>

<exercise id="2" title="Making a Dot Plot">

Let's try making a simple dot plot with the mussel length data. To start, let's just look at some code to import data and make a simple graph.
In the code chunk below (gray box), there are several lines of code that will load the packages needed, import the mussel length data, and make a graph comparing the lengths of all the mussels from the two rivers.

To help you understand what the different parts of the code do, there are comments included.  Any text after the "#" is considered a comment and is ignored by R. Keep in mind that you should always heavily comment your own code when you start writing code so your future self remembers what your past self did and why.

To run the code, click the "Run Code" button.

<codeblock id="02_01">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

This is a simple graph that is not formatted as well as it could be. 

Let's add nicer axis titles (including adding the units!). To add new elements when graphing using `ggplot`, add a plus symbol at the end of each line except for the last one.

<codeblock id="02_02">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

That looks a little nicer doesn't it. Let's add some color. 

Code to customize the points is included inside of the `geom_quasirandom` function (since that is the function that is making the points for us). Feel free to play around with the size, shape, alpha, color, and fill to see what these functions do. 

- Try different shapes by looking at some options here: [The different point shapes available in R](http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r)
- You can use a color reference guide such as this one to pick other colors for the color (outline) and fill (inside): [ggplot2 Quick Reference: colour (and fill)](http://sape.inf.usi.ch/quick-reference/ggplot2/colour)

<codeblock id="02_03">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

Now let's add a measure of central tendency. Since the data do not look normal, let's add a median using the `stat_summary` function.

<codeblock id="02_04">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

Now let's get a little fancy and add another factor - in this case year. For the way the data was imported, it automatically treated year as an integer. But we want it to be a factor. So we will add a line of code to make year a factor. 

To add year as a factor in the graph, we will add it in the aesthetics mapping (aes) as the color and the fill. We will also use `dodge.width` in the `geom_quasirandom` function and `position=position_dodge(width= )` in the `stat_summary` function to shift the years over within each location so they do not overlap each other.

<codeblock id="02_05">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

Last but not least, let's add a third factor - season. This time we will use `facet_wrap` to make a separate panel of the same graph for each season

<codeblock id="02_06">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

We didn't measure mussels in 2017-2019 in the fall so the graph looks a little asymmetrical. Let's try filtering to just keep 2015 and 2016 using `filter` from the {dplyr} package

<codeblock id="02_07">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

In the next chapter, you will be given template code to make a variety of graphs so you can decide what type you like best and you can play around changing different parameters to see what different parts of the code does.

</exercise>