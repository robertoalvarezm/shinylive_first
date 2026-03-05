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
#options(download.file.method = "curl")
#shinylive::export("mi_app", "docs")



#git init
#git add .
#git commit -m "primera app shinylive"
#git remote add origin https://github.com/tu_usuario/mi-shiny-app.git
#git push -u origin main


### 5. Activa GitHub Pages


#git init
#git add .
#git commit -m "primera app shinylive"
#git remote add origin https://github.com/tu_usuario/mi-shiny-app.git
#git push -u origin main

#En tu repo de GitHub:
# **Settings → Pages → Source → Deploy from branch → `main` → carpeta `/docs`**
  
  #En ~1 minuto tu app estará disponible en:
  #```
#https://tu_usuario.github.io/mi-shiny-app/