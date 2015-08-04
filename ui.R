
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Polynomial Function"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("intercept",
                  "Y Intercept",
                  min = -5,
                  max = 5,
                  value = 0),
      sliderInput("slope",
                  "Slope (rate of change)",
                  min = -2,
                  max = 2,
                  value = 0),
      sliderInput("degree",
                  "degree of the polynomial:",
                  min = 1,
                  max = 7,
                  value = 1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
#       plotOutput("distPlot")
      plotOutput("polyPlot")
    )
  )
))
