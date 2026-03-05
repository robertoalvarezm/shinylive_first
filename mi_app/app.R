#Crea una carpeta mi_app/ con un archivo app.R:

# mi_app/app.R
library(shiny)

ui <- fluidPage(
  titlePanel("Mi app en GitHub"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("n", "Número de puntos:", min = 10, max = 200, value = 50)
    ),
    mainPanel(
      plotOutput("grafico")
    )
  )
)

server <- function(input, output) {
  output$grafico <- renderPlot({
    plot(rnorm(input$n), rnorm(input$n),
         col = "steelblue", pch = 19,
         main = paste(input$n, "puntos aleatorios"))
  })
}

shinyApp(ui, server)
shinylive::export("mi_app", "docs")
