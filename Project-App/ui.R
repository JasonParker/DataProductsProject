library(shiny)

# Define UI for application that draws a histogram
shinyUI(
        pageWithSidebar(
        
        # Application title
        headerPanel("Central Limit Theorem example"),
        
        # Inputs
        sidebarPanel(

                p("Demonstration of CLT using the airquality data set."),

                sliderInput("samples",
                            label = "Number of samples",
                            min = 10, max = 50, value = 10,
                            step = 5),
                sliderInput("observations",
                            label = "Number of observations per sample",
                            min = 5, max = 25, value = 5,
                            step = 5),
                
                h4("Average wind speed for airquality dataset (red line)"),
                verbatimTextOutput("averageWind")

        ),
          
        mainPanel(
                plotOutput("mainPlot")
        )

))