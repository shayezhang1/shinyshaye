#install.packages("shiny")
#library(shiny)
# Line 1 DRA PPM Calculator
ui <- fluidPage(
  headerPanel('Line 1 Felixville Station Bypass'),
  #input() functions
  #Output() functions
  sliderInput(inputId = "rate",
              label = "Drag to a target rate in KBPH",
              value = 30, min = 1, max= 100),
  numericInput(inputId = "discharge",
               label = "Enter a discharge pressure in psi",
               value = 500, min = 1, max = 1000),
  numericInput(inputId = "alternate",
               label = "Enter an alternate pressure in psi",
               value = 200, min = 1, max = 1000),
  numericInput(inputId = "suction",
               label = "Enter a suction pressure in psi",
               value = 45, min = 1, max = 1000),
  verbatimTextOutput("PPM_Results"),
  verbatimTextOutput("stats")
)
# 3 steps inside server
# 1st step: Save objects to display to outputs output$hist links to previous outputId "hist"
# 2nd step: Build objects to display with render()
# 3rd step: use input values with input$

server <- function(input,output) {
  #fluid and chemical data
  SGDRA = 0.88
  SGgas = 0.73
  SGoil = 0.85
  mg = 0.086862
  mo = 0.090457
  b = 0.009319
  # station elevation and mileage data
  BRJmile = 260.44
  BRJele = 104.99
  FEBmile = 288.89
  FEBele= 197.5
  MCBmile = 318.2
  MCBele = 358.25
  #coefficients 
  xo60 = 60
  xo100 = 100
  x = 0.104 # mile to inches
  y = 0.0079 # psi to inches
  z = 0.002594 # feet to inches
  #calculations
  dispin = reactive(input$discharge*y) #discharge pressure in inches
  altpin = reactive(input$alternate*y) #alternate pressure in inches
  sucpin = reactive(input$suction*y) #suction pressure in inches
  mpdiff = reactive(MCBmile - BRJmile) # mileage difference C-A
  elediff = reactive(BRJele - MCBele) # elevation difference A-C
  mpdiffin = reactive(mpdiff()*x) #mileage diff in inches
  elediffin = reactive(elediff()*z) #elevation diff in inches
  #alternates 
  mpdiffalt = reactive(MCBmile - FEBmile) # mileage difference C-B
  elediffalt = reactive(FEBele - MCBele) # mileage difference B-C
  mpdiffaltin = reactive(mpdiffalt()*x) # mileage diff in inches
  elediffaltin = reactive(elediffalt()*z) #elevation diff in inches
  #angles (custom)
  angleac = reactive(
    atan(mpdiffin()/(elediffin()+dispin()-sucpin()))
         ) # calculates angle from A to C
  anglebc = reactive(
    atan(mpdiffaltin()/(elediffaltin()+altpin()-sucpin()))
  )
  anglemax = reactive(max(angleac(),anglebc()))
  
  #finish up X and DR and rate and PPM 
  ratein = reactive(input$rate^2*0.0017+0.0216*input$rate-0.1167)
  xin = reactive(tan(anglemax())*ratein())
  xmile = reactive(xin()/x)
  DR = reactive((1-xo60/xmile()+0.0012*mpdiff())*100)
  PPM = reactive(mg*DR()/((SGDRA/SGgas)-b*SGDRA/SGgas*DR()))
  
  #reactive expressions cache values
  output$PPM_Results <- renderPrint('PPM results provided below')
  output$stats <- renderPrint(PPM())
}
shinyApp(ui = ui, server = server)
