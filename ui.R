
library(shiny)
library(leaflet)

shinyUI(fluidPage(
    titlePanel("Show the highest peak of each continent"),
    sidebarLayout(
        sidebarPanel(
            textInput("textBox", "Enter Continent:", value = "e.g. North America"),
            sliderInput("zoomLevel", "Zoom", 10, 15, value = 12),
            submitButton("Show on map!"),
            br(strong("Documentation:")),
            "The app shows the highest peak of each continent, i.e. the seven summits.
            Enter the name of a continent", em("(Asia, Antarctica, Africa, Australasia, 
            Europe, North America, South America)"), "and push the", code("Show on map!"),
            "button.","The slider lets you fine-tune the zoom on the map. Note that 
            you need to push the button again after adjusting the zoom."
            
        ),
        mainPanel(
            h3(textOutput("summit")),
            leafletOutput("leafletMap")
        )
    )
))
