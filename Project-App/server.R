library(shiny)
data(airquality)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        output$mainPlot <- renderPlot({
                x <- vector()
                for (i in 1:as.numeric(input$samples)){
                        x[i] <- mean(sample(airquality$Wind, 
                                            size = as.numeric(input$observations),
                                            replace = TRUE))
                }
                hist(x, breaks = 10,
                     xlab = "Average wind speed of sample",
                     ylab = "Frequency",
                     main = "Frequency of average wind speed")
                abline(v = mean(airquality$Wind), col = "darkred", lwd = 4)
        })
        
        output$averageWind <- renderPrint({mean(airquality$Wind)})
     
})