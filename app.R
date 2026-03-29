# Assignment 7 - Shiny App I

# Sam Feinberg


n <- 200

ui <- bootstrapPage(
  numericInput('n', 'Number of obs', n),
  plotOutput(outputId = 'boxplot')
)

server <- function(input, output) {
  output$boxplot <- renderPlot({
    boxplot(runif(input$n))
  })
}

shinyApp(ui = ui, server = server)
