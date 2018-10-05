#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  pageWithSidebar(
    headerPanel("Aplicacion simple con shiny"),
    sidebarPanel(
      p("vamos a crear plots con el dataframe de 'auto'"),
      selectInput("x", "Selecciona el eje de las X",
                  choices = c("weight", "cylinders", "acceleration"))
    ),
    mainPanel(h3(textOutput("Esto es el panel ppal")))
  )
)
