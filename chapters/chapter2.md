---
title: 'Chapter 2: Getting Started Making Graphs in R'
description:
  'This chapter will use template code to help you learn how to make a dot plot using the ggplot2 package in R.'
prev: /chapter1
next: /chapter3
type: chapter
id: 2
---

<exercise id="1" title="Getting Started with Graphing in R" type="slides">

<slides source="chapter2_01_start">
</slides>

</exercise>

<exercise id="2" title="Making a Dot Plot">

Let's try making a dot plot with the mussel length data. 

In the code chunk below (gray box), there are several lines of code that will load the packages needed, import the mussel length data, and make a graph comparing the shell lengths of all the mussels from the two rivers.

Don't worry about looking carefully at the code below, just run it to see what the resulting graph looks like.

To run the code, click the "Run Code" button. 

Please note that the first time you run code on this website it may take quite a while to activate everything behind the scenes (it will say something like "Loading Docker container on mybinder.org... "). Be patient, it will run the code eventually. After the first time you run the code, all the code after that should run quickly.

<codeblock id="02_08">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

To be able to understand the code that made this graph and be able to tweak template code effectively going forward, let's break down the essential parts of a ggplot graph.

All ggplot graphs must have at least three essential elements (in addition to the `ggplot` call itself):

1. `data= ` tells ggplot what data to use
2. `aes()`  tells ggplot what aesthetic mapping to use including which columns in the data should be used for the x and y variables. There are also other aesthetics you can set including color, fill, shape, size, etc depending on the types of graph. See [Aesthetic specifications](https://ggplot2.tidyverse.org/articles/ggplot2-specs.html) for more information
3. You must add at least one geometric object using `geom_ ()` to tell ggplot what type of graph to make. See the list of possible [Geoms](https://ggplot2.tidyverse.org/reference/index.html#geoms)

You can add many other lines of code to customize your graph to make it look just how you want. But let's start with the MOST basic plot possible.

Inspect the code below and note that is contains the three essential elements of a ggplot graph. To help you understand what the different parts of the code do, there are comments included.  Any text after a "#" is considered a comment and is ignored by R. Keep in mind that you should always heavily comment your own code so your future self remembers what your past self did and why.

Run the code below to see what using just the three essential elements will graph:

<codeblock id="02_09">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

This is not the prettiest graph, but you can see that it does give us a point for each shell length for the mussels from each river. Because our variable on the x-axis is categorical and there are lots of similarly sized mussels, the points overlap each other too much which makes patterns in the data difficult to see. So let's "jitter" the points horizontally using a special `geom` called `geom_quasirandom` from an extension package called {ggbeeswarm} by running the code below.

<codeblock id="02_01">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

This graph looks better in that we can see the shape of the data after jittering using `geom_quasirandom`, but this is still a simple graph that is not formatted as well as it could be. 

Let's add nicer axis titles (including adding the units!). To add new elements when graphing using `ggplot`, add a plus symbol at the end of each line except for the last one.

<codeblock id="02_02">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

That looks a little nicer doesn't it. Let's add some color. 

Code to customize the points is included inside of the `geom_quasirandom` function (since that is the function that is making the points for us). Feel free to play around with the size, shape, alpha, color, and fill to see what these functions do. 

- Try different shapes by looking at some options here: [Point shapes](https://ggplot2.tidyverse.org/articles/ggplot2-specs.html#sec:shape-spec)
- You can use a color reference guide such as this one to pick other colors for the color (outline) and fill (inside): [ggplot2 Quick Reference: colour (and fill)](http://sape.inf.usi.ch/quick-reference/ggplot2/colour)

<codeblock id="02_03">

There are no blanks here and you don't need to make any changes. Click "Reset" if you change anything and want to change it back.

</codeblock>

Now let's add a measure of central tendency by using the `stat_summary` function. Since the data do not look normal, we will use the median (but note that you can replace the word median with mean to add the mean instead).

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

Phew - that was a lot of new information if you are new to R. It will take time to fully understand all the code. But the good news is, you can still use template code with some blanks in it to make your own graphs even if you don't understand all the code itself.

If you want to learn about graphing with {ggplot2} in more depth, see the list of [Learning ggplot2](https://ggplot2.tidyverse.org/index.html#learning-ggplot2) resources on the {ggplot2} webpage.

In the next chapter, you will be given template code to make a variety of graphs so you can decide what type you like best and you can play around changing different parameters to see what different parts of the code does.

</exercise>