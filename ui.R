# user interface for html_test app
library(shiny)
library(shinythemes)

#add path for html file to place in iframe
# addResourcePath(prefix = "htmltext", directoryPath = "text")

# options(warn = -1)

ui = navbarPage("HTML Tests",
                theme = shinytheme("journal"),
                header = tags$head(
                  tags$link(rel = "stylesheet",
                            type = "text/css",
                            href = "style.css") 
                ),
                
                tabPanel("The Problem",
                  fluidRow(
                    column(width = 6, 
                      wellPanel(
                        includeHTML("www/html_file1.html") 
                                  )),
                    column(width = 6,
                       align = "center",
                       img(src = "intro_image.gif", height = "250px")
                           )
                         )),
                
                tabPanel("Sol'n 1: iFrame",
                  fluidRow(
                    column(width = 6, 
                      wellPanel(
                        tags$iframe(src="html_file2.html",
                                    width = "100%", height = "700px",
                                    frameBorder = 0) 
                                  )),
                           column(width = 6,
                                  align = "center",
                                  img(src = "intro_image.gif", height = "250px")
                           )
                         )),
                tabPanel("Sol'n 2: Delete Extra HTML Tags",
                  fluidRow(
                    column(width = 6, 
                      wellPanel(
                        includeHTML("www/html_file3.html") 
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
