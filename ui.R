library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("CAGR CALCULATOR"),
  # Show a plot of the generated distribution
  sidebarLayout(
    sidebarPanel(
      helpText("This app calculates Compounded Annual Growth Rate 
               based on your inputs."),            
      br(),            
      numericInput("endv",
                   label = h6("Ending Value"),
                   value = 1),
      br(),            
      numericInput("stav",
                  label = h6("Starting Value"),
                  value=1),
      
      br(),            
      sliderInput("years",
                  label = h6("Choose the number of time periods"),
                  min = 1, max = 30,value=5),
      br(),
      actionButton("action_Calc", label = "Refresh & Calculate")    
      ),                     
  mainPanel(
    textOutput("text"),
    br(),
    br(),
    br(),
    br(),
    br(),
    br(),
    br(),
    br(),
    br(),
    br(),
    p(h4("DOCUMENTATION")),
    HTML("<b>The Given App Calculates The <a href='https://en.wikipedia.org/wiki/Compound_annual_growth_rate'>
          Compounded Average Growth Rate </a>.</b> <br> It is a way to measure geometrically 
          provided growth rate which is used in business and accountancy .
          
         "
      )
  )  
))
)