library(shiny)


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



shinyServer(
  function(input, output) {
        
    output$leftside <- renderPrint({ci.left(input$sample.mean,input$standard.deviation,input$sample.size,input$confidence.level)})
    output$rightside <- renderPrint({ci.right(input$sample.mean,input$standard.deviation,input$sample.size,input$confidence.level)})
    
  }
)