# user interface for html_test app
library(shiny)
library(shinythemes)

ui = navbarPage("HTML Tests",
                theme = shinytheme("journal"),
                header = tags$head(
                  tags$link(rel = "stylesheet",
                            type = "text/css",
                            href = "style.css") 
                ),
                
                tabPanel("The Problem and Solution",
                  fluidRow(
                    withMathJax(),
                    column(width = 6, 
                      wellPanel( 
                        includeHTML("www/html_file1.html")
                                  )),
                    column(width = 6,
                       align = "center",
                       img(src = "intro_image.gif", height = "250px")
                           )
                         )),
      
                tabPanel("Additional Details",
                 fluidRow(
                   column(width = 6, 
                     wellPanel(
                       includeHTML("www/details.html") 
                     )),
                        column(width = 6,
                              align = "center",
                              img(src = "intro_image.gif", height = "250px")
                           )
                         ))
                
) #close navbarpage
