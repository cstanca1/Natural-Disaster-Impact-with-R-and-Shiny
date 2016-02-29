library(shiny)
library(rCharts)

shinyUI(navbarPage(
  "Population and Economic Impact of Natural Disasters in USA",
  tabPanel(
    "Plot",
    sidebarPanel(
      sliderInput(
        "range",
        "Year Range:",
        min = 2000,
        max = 2010,
        value = c(2000, 2010),
        sep = ","
      ),
      uiOutput("evtypeControls")
    ),
    
    mainPanel(tabsetPanel(
 
      tabPanel(
        'By State',
        column(3,
               wellPanel(
                 radioButtons(
                   "populationImpactCategory",
                   "Population:",
                   c(
                     "Both" = "both", "Injuries" = "injuries", "Fatalities" = "fatalities"
                   )
                 )
               )),
        column(3,
               wellPanel(
                 radioButtons(
                   "economicImpactCategory",
                   "Economic:",
                   c(
                     "Both" = "both", "Property" = "property", "Crops" = "crops"
                   )
                 )
               )),
        column(
          7,
          plotOutput("populationImpactByState"),
          plotOutput("economicImpactByState")
        )
      ),
	  
	  tabPanel(
        'By Year',
        h4('Events by Year', align = "center"),
        showOutput("eventsByYear", "nvd3"),
        h4('Population Impact by Year', align = "center"),
        showOutput("populationImpact", "nvd3"),
        h4('Economic Impact by Year', align = "center"),
        showOutput("economicImpact", "nvd3")
      )	  
  )
)
)))