library(shiny)

shinyUI(pageWithSidebar(
  #Application Title
  headerPanel("Calculate a Confidence Interval from a Normal Distribution"),
  
  sidebarPanel(
    numericInput('sample.mean', 'Enter value for sample mean (10-100)', 10, min = 10, max = 100, step = 5),
    numericInput('standard.deviation', 'Enter value for standard deviation (1-50)', 1, min = 1, max = 50, step = 1),
    numericInput('sample.size', 'Enter value for sample size (20-150)', 20, min = 20, max = 150, step = 5),
    numericInput('confidence.level', 'Enter value for confidence level (50%-95%)', 50, min = 50, max = 95, step = 5),
    submitButton("Submit")
  ),
  
  mainPanel(
    h3('The Confidence Interval is between'), verbatimTextOutput("leftside"), h3('and'), verbatimTextOutput("rightside")
    
  )
))