shinyServer(
  function(input, output) {
    values<-reactiveValues() 
    observe({
      input$action_Calc
      values$cagr<-isolate({
        (((input$endv/input$stav)^(1/input$years))-1)*100
      })
        })
    output$text <- renderText({ 
      if (input$action_Calc ==0 ) ""
      else
        if(isolate(input$stav)==0) "Invalid Input"
      else 
      paste("The Compounded Annual Growth Rate is ::: ",round(values$cagr,digits=4))
    })
  }
)