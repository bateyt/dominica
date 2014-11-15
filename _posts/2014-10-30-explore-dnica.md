---
layout: post
title: "Historical demography in Dominica with ggplot2"
comments: yes
---



One reason why R has become so popular among data scientists is that has some powerful tools for producing publishable-quality graphics. For many users, the base graphics system---"base" because it comes with the base install of R---is all that is needed to produce the desired output. Aside from the official R manuals, there are many tutorials for using base graphics. Rob Kabacoff's [Quick-R](http://www.statmethods.net/graphs/index.html) provides a short intro on producing basic graphs in R, and Josef Fruehwald provided [this guide](http://jofrhwld.github.io/rstudy/week4.html#Base) to plotting with the base graphics system.

Here, I'll be using the `ggplot2` package (Wickham, 2009). `ggplot2` is a newer graphical system for R, which is an implementation of Leland Wilkinson's _Grammar of Graphics_ (Wilkinson, Wills, Rope, et al., 2006), which takes the best parts of R's base and `lattice` graphics systems to produce multilayerd graphs.

So, let's get started exploring some aspects of historical demographic data for Caribs who lived in the Carib Territory within the Commonwealth of Dominica. Today, the [Carib Territory](http://en.wikipedia.org/wiki/Carib_Territory) in northeast Dominica is home to the largest population---2145 individuals, according to [preliminary results](http://dominica.gov.dm/images/documents/2011_census_report.pdf) of the 2011 census---of Island Caribs. For more, Honychurch (1995) provides a detailed history of Dominica.

First, download and load the data. The R code below acceses a subset (n = 500) of the original data frame.


{% highlight r %}
download.file("https://www.dropbox.com/s/i8dcx7o4lo36tb2/dnica2.txt?dl=1", "dnica2.txt")
dnica2 <- read.table("dnica2.txt", header = TRUE, sep = "\t")
{% endhighlight %}

The data are comprised of parish death records from 1917 to 1971. Let's say we want to explore the age-at-death distribution for the entire sample. A common way to view this is with a histogram. I've decided override `ggplot2`'s default color themes using the [`ggthemr` package](https://github.com/cttobin/ggthemr).


{% highlight r %}
library(ggplot2)
library(ggthemr)
ggthemr("dust")
ggplot(dnica2, aes(x = age)) + geom_histogram()
{% endhighlight %}

![center](http://bateyt.github.io/dominica/figs/2014-10-30-explore-dnica/unnamed-chunk-3-1.png) 




<!--The <iframe> below is for including an interactive ggvis plot that runs from shinyapps.io

<iframe frameborder="0" allowtransparency="true" scrolling="no" height="450" width="100%" src="https://bateyt.shinyapps.io/dnica_age-hist/"></iframe>-->


### References

[1] L. Honychurch. _The Dominica Story: A History of the Island_. Macmillan, 1995.

[2] H. Wickham. _ggplot2: elegant graphics for data analysis_. New York: Springer, 2009.

[3] L. Wilkinson, D. Wills, D. Rope, et al. _The Grammar of Graphics_. New York: Springer, 2006.