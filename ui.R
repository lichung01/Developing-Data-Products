library(shiny) 
shinyUI(
  navbarPage("BMI Analysis",tabPanel("Calculator", 
          pageWithSidebar(
                # Application title
                headerPanel("Body Mass Index (BMI) Calculator"),
                
                sidebarPanel(
                  numericInput('height', 'Input your height (metres)', 1.72, min = 0.3, max = 3, step = 0.01),
                  numericInput('weight', 'Input your weight (kilograms)', 65) ,
#                  radioButtons('sex', 'Sex', 
#                               c("male" = "m",
#                                 "female" = "f")),
                  submitButton('Calculate BMI')
                ), 
                mainPanel(
                        p('The Body Mass Index (BMI) shows the relation between a person\'s height and weight, and is often used to indicate whether the person is normal weight, underweight or overweight etc.'),
                        p('BMI values following the World Health Organization (WHO) classification:'),
                        tags$div(
                                tags$ul(
                                        tags$li('BMI < 16.0       : Severe Thinness'),
                                        tags$li('BMI [16.0-16.99] : Moderate Thinness'),
                                        tags$li('BMI [17.0-18.49] : Mild Thinness'),
                                        tags$li('BMI [18.5-24.99] : Normal weight'),
                                        tags$li('BMI [25.0-29.99] : Overweight'),
                                        tags$li('BMI [30.0-34.99] : Obese Class I '),
                                        tags$li('BMI [35.0-39.99] : Obese Class II'),
                                        tags$li('BMI >= 40        : Obese Class III')
                                )
                        ),
                     
                        h4('BMI Calculator using:'), 
                        p('height:'), verbatimTextOutput("inputheight_val"),
                        p('weight:'), verbatimTextOutput("inputweight_val"),
                        h4('Your BMI is:'),
                        verbatimTextOutput("calculation"),
                        p('The result shows that you are:'),strong(verbatimTextOutput("analysis"))
                        
                        
                )
                
        )
),
        tabPanel("About",mainPanel(includeMarkdown("README.md"))))
)