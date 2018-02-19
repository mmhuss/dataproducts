
library(shiny)

shinyServer(function(input, output){
    output$leafletMap <- renderLeaflet({
        if(tolower(input$textBox) == "asia"){
            output$summit <- renderText({
                "Mt. Everest (8848 m)"})
            coords <- data.frame(lat = c(27.987763),
                                 lng = c(86.925052))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else if(tolower(input$textBox) == "antarctica"){
            output$summit <- renderText({
                "Mt. Vinson (4892 m)"})
            coords <- data.frame(lat = c(-78.633980),
                                 lng = c(-85.213618))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else if(tolower(input$textBox) == "africa"){
            output$summit <- renderText({
                "Mt. Kilimanjaro (4892 m)"})
            coords <- data.frame(lat = c(-3.066268),
                                 lng = c(37.355670))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else if(tolower(input$textBox) == "australasia"){
            output$summit <- renderText({
                "Puncak Jaya (Carstensz Pyramid) (4884 m)"})
            coords <- data.frame(lat = c(-4.083393),
                                 lng = c(137.186563))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else if(tolower(input$textBox) == "europe"){
            output$summit <- renderText({
                "Mt. Elbrus (5642 m)"})
            coords <- data.frame(lat = c(43.350530),
                                 lng = c(42.445201))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else if(tolower(input$textBox) == "north america"){
            output$summit <- renderText({
                "Denali (Mt. McKinley) (6194 m)"})
            coords <- data.frame(lat = c(63.069440),
                                 lng = c(-151.007070))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else if(tolower(input$textBox) == "south america"){
            output$summit <- renderText({
                "Aconcagua (6961 m)"})
            coords <- data.frame(lat = c(-32.652311),
                                 lng = c(-70.011039))
            coords %>%
                leaflet() %>%
                addProviderTiles("Esri.WorldImagery") %>% 
                addMarkers() %>%
                setView(lat=coords$lat, lng=coords$lng, 
                        zoom = input$zoomLevel) 
        }
        else{
            leaflet() %>%
                addProviderTiles("Esri.WorldImagery") 
        }
    })    
})


    
