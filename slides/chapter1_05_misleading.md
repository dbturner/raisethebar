---
type: slides
---

# Bar Graphs with Means and Error Bars Can Be Misleading

- Does not show the distribution, range, or sample size of the actual values
- Misleads because of common belief that values fall within the bar rather than above
- You can get the same bars with very different distributions


Notes: Did those previous three questions help you see that bar graphs can be misleading? See [Weissgerber et al. 2019 paper from the journal Circulation](https://www.ahajournals.org/doi/10.1161/CIRCULATIONAHA.118.037777) (as well as the references cited within) for a good overview of why it is recommended that you DO NOT use bar graphs for data with continuous dependent variables grouped by a categorical independent variable.


---

## Bar graphs do not allow us to answer questions about the distribution, sample size, or range of data.

Are there other graph types that can help use answer these questions more effectively?

Notes: Bar graphs may not help use answer questions about the distribution, sample size, or range of data, but there are other graph types that can help us answer these questions.

---

# Other Graph Types

There are lots of other graphs types that can be useful for data with a continuous dependent variable grouped by a categorical independent variable.

Here are some resources if you would like to familiarize yourself with some alternative graph types

- [How to Interpret Boxplots](https://www.labxchange.org/library/items/lb:LabXchange:d8863c77:html:1)
- [How to Interpret Violin Plots](https://www.labxchange.org/library/items/lb:LabXchange:46f64d7a:html:1)
- [How to Interpret Histograms](https://www.labxchange.org/library/pathway/lx-pathway:9ec0515c-d122-4ab5-85ac-c9c9c0850417/items/lx-pb:9ec0515c-d122-4ab5-85ac-c9c9c0850417:html:ad380c68)
- [Dot plots using geebeeswarm in ggplot2](https://github.com/eclarke/ggbeeswarm)


Notes: If you are unfamiliar with box plots, violin plots, histograms, and/or dot plots, then check out these resources to help you understand the different graph types we will be discussing next in more detail before you move to the next section. 

A note on terminology for the 4th graph type in the list - we use the term "dot plot" here, but a plot that shows all the points for different groups can also be called a beewarm-stye plot, jitter plot, violin scatter plot, column scatter plot, jittered strip plot, jittered individual value plot, among others. 

---

# Mussel Length Data Graphed in 4 Ways

<img src="https://raw.githubusercontent.com/dbturner/raisethebar/main/static/plots.png" alt="This image shows 4 different plot types with the same mussel length data. Bars that show means and standard errors, jittered dot plots with medians that show the distribution of the data, box plots, and violin plots. " width="80%"/>

Notes: 
(right click on the image and select "open image in new tab" if the graphs are getting cut off)

Here we see the same *Elliptio complanata* mussel length data graphed in four different ways: 

1. Bar plots showing the means and standard errors, 
2. Dot plots showing individual points jittered to show the data distribution and the median shown as the horizontal bar,
3. Box plots showing the median (middle horizontal bar), middle 50% of the data (= the interquartile range shown as the box), whiskers (reach up to 1.5 times the interquartile range from the edges of the box), and outliers (points shown outside of the whiskers), and 
4. Violin plots which show the distribution of the data as a mirrored, smoothed probability density curve. Go back to the previous slide and click on the resource links if you need help interpreting what these plots show. What are the pluses and minuses of each of these graph types?

---

# Visualizing Grouped Continuous Data
(dependent variable is continuous, independent variable(s) categorical)

- Show all points or distribution whenever possible
- Distribution of data and sample size determine which summary statistics to use 
  - Summary statistics are less reliable when sample size is small
  - Only use mean and SD if normal
  - Box plots are a useful way to show summary statistics, but don’t use box plots alone if data are multimodal 
  
Notes: Here are some key best practices to graph data that has a continuous dependent variable and one or more categorical independent variables.

---

### What Graph to Choose When You Have a Categorical Independent Variable
(adapted from [Weissgerber et al. 2019](https://doi.org/10.1161/CIRCULATIONAHA.118.037777)  by Marney Pratt, March 3, 2022)
<img src="https://raw.githubusercontent.com/dbturner/raisethebar/main/static/graph_choice.png" alt="This image shows a table to help choose a good graph type. See the slide notes for a thorough description." width="90%"/>

Notes: Here are some more in depth best practices to help you choose the best graph type

- Dot Plot shows All data points “jittered” to not overlap, with mean or median. Dot plots are best with a continuous dependent variable with very small to medium sample sizes and sample size too small to determine distribution OR any data distribution. Best practices for dot plots: jitter to make all points visible, use median (not mean) if sample size very small, only add dispersion summary stats if sample size is large enough
- Box Plot shows a box that represents the interquartile range (middle 50% of the data) with a median shown as a horizontal line within the box. Whiskers most often extend from the box up to 1.2 times the interquartile range and if points are present outside of the whiskers they are considered outliers. Best practices for box plots: use with a continuous dependent variable with medium to large sample size in each group (~20 or more, but no hard rule), only use for unimodal distributions (=one peak) and not for bimodal or multimodal data, list sample size for each group on the x-axis or give in the figure legend, make sure to specify what whiskers represent in the figure legend (as these can be defined differently)
- Violin Plot is created by taking the kernel density estimate and shows a smoothed data distribution curve (wider parts of the violin show where there is more data). Best practices for violin plots: use with a continuous dependent variable with larger sample sizes (usually around 30 or more per group, but no hard rule), list the sample size for each group on the x-axis or in the figure legend, do not include impossible values (for example, negative values when they are not possible), adjust the bandwidth and overall width as needed
- Bar Graph shows a bar with the height representing the value of a count or proportion. Best practices for bar graphs: use only with discrete data (counts or proportions) and NOT for continuous data.
- Mixed Graph showing points, box, and violin (or some other combination) to compliment the pros of the different graph types. Best used for medium to large sample sizes (~20+ but no hard rule). If data is multimodal, must show the distribution by jittered points and/or violin. If the sample size is small, emphasize points and de-emphasize parts with less certainty (e.g. summary stats). If the sample size is large, emphasize most important parts (e.g. summary stats) but de-emphasize parts that might be distracting by making more transparent

---

# Mix and Match When Needed
<img src="https://raw.githubusercontent.com/dbturner/raisethebar/main/static/mix.png" alt="This image shows a graph of the mussel lengths that mixes a violin, box, and dot plot." width="80%"/>

Notes: It can be helpful to mix and match different graph types to get the benefits of each to compliment each other. Here we have mixed a dot plot, box plot, and violin plot. The sample size for the number of mussels from each year in each river has also been added.

---

### A Dot Plot alone is a good choice for this dataset
<img src="https://raw.githubusercontent.com/dbturner/raisethebar/main/static/dot2.png" alt="This image shows a dot plot of the mussel lengths that includes the sample sizes and the median." width="80%"/>

Notes: In this particular case, the dot plot with medians might be especially useful with this dataset because it clearly shows the multimodal nature of the distribution of mussel shell lengths. You can clearly see the difference in sample sizes as well as gaps in the data between different size classes.  It looks like there was a better recruitment of small mussels in 2018 in the Mill River. Note the median looks slightly higher in the Manhan River than the Mill River in 2019, but there are a lot more small mussels as well as some larger mussels in the Mill River. Since we find the mussel density has increased and there is a good mix of sizes of mussels (including those that are smaller and larger than in the Manhan River), we don’t see any clear evidence of a negative impact of managing sediment upstream in Paradise Pond.

In the next chapter, we will practice using template code to make these different graphs using R