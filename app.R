# Assignment 7 - Shiny App I

# Sam Feinberg


n <- 200

ui <- bootstrapPage(
  numericInput('n', 'Number of obs', n),
  plotOutput('plot')
)

server <- function(input, output) {
  output$plot <- renderPlot({
    hist(runif(input$n))
  })
}

shinyApp(ui = ui, server = server)
