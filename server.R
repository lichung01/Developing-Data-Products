library(shiny) 

#' This function calculates the BMI value and determines the BMI band range it falls within 

BMI <- function(height, weight) {weight/(height^2)}

return_analysis <- function(height, weight){
      BMI_value <- weight/(height^2)
      ifelse(BMI_value < 16,"severe thinness",
             ifelse(BMI_value < 17,"moderate thinness",
                    ifelse(BMI_value < 18.5,"mild thinness",
                           ifelse(BMI_value < 25,"normal weight",
                                  ifelse(BMI_value < 30,"overweight",
                                         ifelse(BMI_value < 35,"obese Class I",
                                                ifelse(BMI_value < 40,"obese Class II","obese Class III")))))))
}


shinyServer(
        function(input, output) {
                
                output$inputheight_val <- renderPrint({input$height})
                output$inputweight_val <- renderPrint({input$weight})
                output$calculation <- renderPrint({BMI(input$height,input$weight)})
                output$analysis <- renderPrint({return_analysis(input$height,input$weight)})
        } 
)