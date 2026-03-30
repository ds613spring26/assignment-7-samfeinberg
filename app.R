# Assignment 7 - Shiny App I

# Sam Feinberg

library(shiny)

n <- 200

ui <- bootstrapPage(
  h2('Sam Feinberg'),
  numericInput('n', 'Number of obs', n),
  selectInput(
    "type",
    "Choose plot type",
    choices = c("Histogram", "Boxplot")
  ),
  selectInput(
    "col",
    "Choose color",
    choices = c("green", "red", "blue", "gray", "orange")
  ),
  plotOutput(outputId = 'boxplot')
)

server <- function(input, output) {
  output$boxplot <- renderPlot({
    data <- runif(input$n)
    if (input$type == "Histogram") {
      hist(
        data,
        col = input$col,
        main = "Histogram"
        )
    } 
    else {
      boxplot(
        data,
        main = "Boxplot",
        col = input$col
            )
    }}
  )
  }


shinyApp(ui = ui, server = server)

# To make the type of plot changeable, I used selectInput with 2 choices, histogram and
# boxplot. Then, I used selectInput for the color as well, so it can be picked from a list.
# I used h2 in the UI to put my name at the top in header 2 size.
