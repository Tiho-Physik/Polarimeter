library(shiny)
ui <- navbarPage(
  strong("Das Polarimeter"),
  
  tabPanel(
    strong("Polarimeter"),
    titlePanel(h4("Polarimeter")),
    
    mainPanel(
      img(
        src = "PolarimeterAufbau.jpg",
        height = 607,
        width = 452
      ),
      style = "text-align:center"
    ),
    
    list(tags$head(
      tags$style("body {background-color: #BEBEBE; }")
    ))
  ),
  
  
  
  
  tabPanel(
    strong("Versuche"),
    titlePanel(h4("Versuche")),
    
    
    sidebarPanel(
      radioButtons(
        "pira",
        "Versuche:",
        choices = c(
          "Polarimeter mit leerer BeobachtungskÃ¼vetten",
          "Polarimeter mit der wÃ¤ssrigen Rinderserumalbumin - LÃ¶sung",
          "Polarimeter mit einer wÃ¤ssrigen Glukose - LÃ¶sung",
          "Polarimeter mit einer wÃ¤ssrigen LÃ¶sung von Milchzucker",
          "Polarimeter mit Kampfer X",
          "Polarimeter mit Kampfer O",
          "Polarimeter mit D (-) Valin",
          "Polarimeter mit L (+) Valin"
        ),
        selected = "Polarimeter mit leerer BeobachtungskÃ¼vetten"
      )
    ),
    
    mainPanel(
      conditionalPanel(
        "input.pira=='Polarimeter mit leerer BeobachtungskÃ¼vetten'",
        ((
          tags$video(
            src = "PolarimeterLeer.mp4",
            width = "750px",
            height = "520px",
            type = "video/mp4",
            controls = "controls"
            
          )
        ))
      )
    ),
    
    mainPanel(
      conditionalPanel(
        "input.pira=='Polarimeter mit der wÃ¤ssrigen Rinderserumalbumin - LÃ¶sung'",
        ((
          tags$video(
            src = "PolarimeterRSA.mp4",
            width = "750px",
            height = "520px",
            type = "video/mp4",
            controls = "controls"
            
          )
        ))
      )
    ),
    
    mainPanel(
      conditionalPanel(
        "input.pira=='Polarimeter mit einer wÃ¤ssrigen Glukose - LÃ¶sung'",
        ((
          tags$video(
            src = "PolarimeterGlucose.mp4",
            width = "750px",
            height = "520px",
            type = "video/mp4",
            controls = "controls"
            
          )
        ))
      )
    ),
    
    mainPanel(
      conditionalPanel(
        "input.pira=='Polarimeter mit einer wÃ¤ssrigen LÃ¶sung von Milchzucker'",
        ((
          tags$video(
            src = "PolarimeterLaktose.mp4",
            width = "750px",
            height = "520px",
            type = "video/mp4",
            controls = "controls"
            
          )
        ))
      )
    ),
    
    mainPanel(conditionalPanel(
      "input.pira=='Polarimeter mit Kampfer X'",
      ((
        tags$video(
          src = "PolarimeterKampferX.mp4",
          width = "750px",
          height = "520px",
          type = "video/mp4",
          controls = "controls"
          
        )
      ))
    )),
    
    mainPanel(conditionalPanel(
      "input.pira=='Polarimeter mit Kampfer O'",
      ((
        tags$video(
          src = "PolarimeterKampferO.mp4",
          width = "750px",
          height = "520px",
          type = "video/mp4",
          controls = "controls"
          
        )
      ))
    )),
    
    mainPanel(
      conditionalPanel("input.pira=='Polarimeter mit D (-) Valin'",
                       ((
                         tags$video(
                           src = "PolarimeterDValin.mp4",
                           width = "750px",
                           height = "520px",
                           type = "video/mp4",
                           controls = "controls"
                           
                         )
                       )))
    ),
    
    mainPanel(
      conditionalPanel("input.pira=='Polarimeter mit L (+) Valin'",
                       ((
                         tags$video(
                           src = "PolarimeterLValin.mp4",
                           width = "750px",
                           height = "520px",
                           type = "video/mp4",
                           controls = "controls"
                           
                         )
                       )))
    ),
    
  )
  
)



server <- function(input, output, session) {
  
}

shinyApp(ui = ui, server = server)
