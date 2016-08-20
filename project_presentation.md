Coursera: Developing Data Products - Project Presentation
========================================================
author: Chris Hartfield
date: 8/20/2016
autosize: true

Assignment
========================================================

<br></br>
<b>Build a Shinly Application that includes the following:</b>
<ul>
<li>Some form of input</li>
<li>Some operation on the ui input in sever.R</li>
<li>Some reactive output displayed as a result of server calculations</li>
</ul>



Description of Application
========================================================

<br></br>
<b>The Application will calculate the confidence interval given the following inputs:</b>
<ul>
<li>Sample Mean</li>
<li>Standard Deviation</li>
<li>Sample Size</li>
<li>Confidence Level</li>
</ul>


Application Code
========================================================


```r
# Function to calculate left side of confidence interval
ci.left <- function(sm, sd, ss, cl) {
  cl2 = cl / 100
  x <- 1- ((1 - cl2) / 2)
  error <- qnorm(x)*sd/sqrt(ss)
  left <- round(sm - error, 2)
  return(left)
}

# Function to calculate right side of confidence interval
ci.right <- function(sm, sd, ss, cl) {
  cl2 = cl / 100
  x <- 1- ((1 - cl2) / 2)
  error <- qnorm(x)*sd/sqrt(ss)
  right <- round(sm + error, 2)
  return(right)
}
```


Application
========================================================

<br></br>
<u>[Try Application](https://cah-ddp.shinyapps.io/Project/)</u><br></br>
<u>[Source Code](https://github.com/harty9999/DevelopingDataProducts)</u>

