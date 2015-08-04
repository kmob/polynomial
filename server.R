
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$polyPlot <- renderPlot({
    
    ### DATA ###
    x <- seq(1,10)
    y <- seq(1,10)

    ### VARIABLES ###
    # RANGE OF x_prime
    x_prime <- seq(-10, 10, .1)

    ### POLYNOMIAL ###
    #    y_prime <- m*x^n+b
    y_prime <- input$slope*x_prime^input$degree+input$intercept
    y_min <- if(min(y_prime)<(-10)) min(y_prime) else 0
    y_max <- if(max(y_prime)>10) max(y_prime) else 10
    
    # PLOT
    par(pty="s")
    plot(x, y,
         abline(v=0),
         xlim = c(-10, 10),
         ylim = c(y_min, y_max)
    )
    lines(x_prime, y_prime)

})
  
  
  
})
