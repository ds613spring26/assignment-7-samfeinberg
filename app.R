# Assignment 7 - Shiny App I

# Sam Feinberg


n <- 200

ui <- bootstrapPage(
  h2('Sam Feinberg'),
  numericInput('n', 'Number of obs', n),
  plotOutput(outputId = 'boxplot')
)

server <- function(input, output) {
  output$boxplot <- renderPlot({
    boxplot(runif(input$n),
            col = 'red')
  })
}

shinyApp(ui = ui, server = server)

# To change the plot from histogram to boxplot, I changed the plotOutud outputId to
# be 'boxplot'. Then I used that outputId with renderPlot to render the boxplot. I added
# an argument 'col' inside the boxplot to make it red. I used h2 in the UI to put my name
# at the top in header 2 size.
