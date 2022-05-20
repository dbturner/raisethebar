---
title: 'Chapter 2: Practice Making Graphs'
description:
  'This chapter will use template code to help you learn how to make different types of graphs using the ggplot2 package in R.'
prev: /chapter1
next: null
type: chapter
id: 2
---

<exercise id="1" title="Getting Started in R" type="slides">

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

</exercise>